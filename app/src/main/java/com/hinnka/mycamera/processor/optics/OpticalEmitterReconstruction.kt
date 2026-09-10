package com.hinnka.mycamera.processor.optics

import kotlin.math.max
import kotlin.math.sqrt

/** Estimates unresolved emitters from already imaged, compact light footprints.
 * Geometry selects evidence; the rendering profile remains the pupil-derived PSF.
 * Accepted pixels are removed once and their integrated linear RGB is transported
 * once. Neither the observed peak brightness nor the old blur radius is copied
 * into the new PSF. Extended/ambiguous light retains the finite-source path.
 */
internal object OpticalEmitterReconstruction {
    const val MIN_PEAK = .12f
    data class Source(val x: Float, val y: Float, val red: Float, val green: Float, val blue: Float,
        val radius: Float)
    data class Result(val sources: List<Source>, val ownership: ByteArray)

    fun reconstruct(width: Int, height: Int, rgba: FloatArray, maxRadius: Float,
        checkCancellation: () -> Unit = {}, depths: FloatArray? = null,
        acceptSource: (Source) -> Boolean = { true }): Result {
        require(width > 0 && height > 0 && rgba.size == width * height * 4 && maxRadius > 0f)
        val count = width * height
        require(depths == null || depths.size == count)
        val light = FloatArray(count) { i -> max(rgba[i*4], max(rgba[i*4+1], rgba[i*4+2])).coerceAtLeast(0f) }
        if (light.none { it >= MIN_PEAK }) return Result(emptyList(),ByteArray(count))
        // Smooth discovery only; integration always uses the unfiltered source.
        val smooth = FloatArray(count)
        for (y in 0 until height) {
            if (y % 32 == 0) checkCancellation()
            for (x in 0 until width) {
                var sum = 0f
                for (dy in -1..1) for (dx in -1..1) sum += light[
                    (y+dy).coerceIn(0,height-1)*width+(x+dx).coerceIn(0,width-1)] *
                    (if (dx == 0) 2f else 1f) * (if (dy == 0) 2f else 1f)
                smooth[y*width+x] = sum/16f
            }
        }
        val parent = IntArray(count) { it }
        for (y in 0 until height) for (x in 0 until width) {
            val i=y*width+x
            if (light[i] < .002f) continue
            var best=i
            for (dy in -1..1) for (dx in -1..1) {
                val xx=x+dx; val yy=y+dy
                if (xx !in 0 until width || yy !in 0 until height) continue
                val j=yy*width+xx
                if (light[j] < .002f) continue
                if (depths != null && kotlin.math.abs(depths[j]-depths[i]) > .025f) continue
                if (smooth[j] > smooth[best] || smooth[j] == smooth[best] && j < best) best=j
            }
            parent[i]=best
        }
        fun root(index: Int): Int {
            var r=index
            while (parent[r] != r) r=parent[r]
            var i=index
            while (parent[i] != i) { val next=parent[i]; parent[i]=r; i=next }
            return r
        }
        val peaks=FloatArray(count)
        for (i in 0 until count) if (light[i] >= .002f) {
            val r=root(i); peaks[r]=max(peaks[r],light[i])
        }
        class Moments {
            var weight=0.0; var x=0.0; var y=0.0; var xx=0.0; var yy=0.0; var xy=0.0
            var red=0.0; var green=0.0; var blue=0.0; var pixels=0
            var minX=Int.MAX_VALUE; var maxX=0; var minY=Int.MAX_VALUE; var maxY=0
            var minDepth=1f; var maxDepth=0f
        }
        val moments=HashMap<Int,Moments>()
        for (i in 0 until count) {
            if (i % (width*32) == 0) checkCancellation()
            val r=parent[i]
            if (peaks[r] < MIN_PEAK || light[i] < max(.002f,peaks[r]*.04f)) continue
            val m=moments.getOrPut(r) { Moments() }; val x=i%width; val y=i/width; val w=light[i].toDouble()
            m.weight+=w; m.x+=w*x; m.y+=w*y; m.xx+=w*x*x; m.yy+=w*y*y; m.xy+=w*x*y
            m.red+=rgba[i*4]; m.green+=rgba[i*4+1]; m.blue+=rgba[i*4+2]; m.pixels++
            m.minX=minOf(m.minX,x); m.maxX=maxOf(m.maxX,x); m.minY=minOf(m.minY,y); m.maxY=maxOf(m.maxY,y)
            if (depths != null) { m.minDepth=minOf(m.minDepth,depths[i]); m.maxDepth=maxOf(m.maxDepth,depths[i]) }
        }
        val accepted=HashSet<Int>(); val sources=ArrayList<Source>()
        for ((r,m) in moments) {
            if (m.pixels < 6 || m.minX == 0 || m.minY == 0 || m.maxX == width-1 || m.maxY == height-1) continue
            if (depths != null && m.maxDepth-m.minDepth > .04f) continue
            val cx=m.x/m.weight; val cy=m.y/m.weight
            val vx=max(0.0,m.xx/m.weight-cx*cx); val vy=max(0.0,m.yy/m.weight-cy*cy); val cov=m.xy/m.weight-cx*cy
            val gap=sqrt((vx-vy)*(vx-vy)+4*cov*cov)
            val major=(vx+vy+gap)*.5; val minor=max(0.0,(vx+vy-gap)*.5)
            val radius=2*sqrt(major) // equivalent uniform-disc radius along its major axis
            val fill=m.pixels.toDouble()/((m.maxX-m.minX+1)*(m.maxY-m.minY+1))
            if (radius < 1.2 || radius > maxRadius || minor < major*.3 || fill < .3) continue
            val source=Source((cx+.5).toFloat(),(cy+.5).toFloat(),m.red.toFloat(),m.green.toFloat(),m.blue.toFloat(),radius.toFloat())
            if (!acceptSource(source)) continue
            accepted+=r
            sources+=source
        }
        val ownership=ByteArray(count)
        for (i in 0 until count) {
            val r=parent[i]
            if (r in accepted && light[i] >= max(.002f,peaks[r]*.04f)) ownership[i]=(-1).toByte()
        }
        checkCancellation()
        return Result(sources,ownership)
    }
}
