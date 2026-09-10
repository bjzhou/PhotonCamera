package com.hinnka.mycamera.processor.optics

import kotlin.math.exp
import org.junit.Assert.*
import org.junit.Test

class OpticalEmitterReconstructionTest {
    @Test fun neighbouringLightFootprintsBecomeDistinctSourcesWithConservedColorFlux() {
        val w=80; val h=60
        val input=FloatArray(w*h*4)
        for (y in 0 until h) for (x in 0 until w) {
            val light=listOf(25,45).sumOf { cx -> .8*exp(-((x-cx)*(x-cx)+(y-30)*(y-30))/18.0) }.toFloat()
            val i=(y*w+x)*4
            input[i]=light; input[i+1]=light*.6f; input[i+2]=light*.2f; input[i+3]=1f
        }
        val result=OpticalEmitterReconstruction.reconstruct(w,h,input,12f)
        assertEquals(2,result.sources.size)
        for (channel in 0..2) {
            val removed=(0 until w*h).filter { result.ownership[it].toInt()!=0 }.sumOf { input[it*4+channel].toDouble() }
            val integrated=result.sources.sumOf { when(channel) { 0->it.red; 1->it.green; else->it.blue }.toDouble() }
            assertEquals(removed,integrated,1e-4)
        }
        val centers=result.sources.sortedBy { it.x }
        assertEquals(25.5f,centers[0].x,.15f)
        assertEquals(45.5f,centers[1].x,.15f)
    }

    @Test fun flatBrightSurfaceAndElongatedLineAreNotPointEmitters() {
        for (line in listOf(false,true)) {
            val input=FloatArray(48*48*4) { index ->
                val x=(index/4)%48
                if (index%4==3) 1f else if (!line || x in 22..25) .8f else 0f
            }
            assertTrue(OpticalEmitterReconstruction.reconstruct(48,48,input,12f).sources.isEmpty())
        }
    }

    @Test fun rejectedTargetDoesNotRemoveAnyOldFootprint() {
        val input=FloatArray(32*32*4) { index ->
            val x=index/4%32; val y=index/4/32
            if (index%4==3) 1f else .8f*exp(-((x-16)*(x-16)+(y-16)*(y-16))/18f)
        }
        val result=OpticalEmitterReconstruction.reconstruct(32,32,input,12f,acceptSource={false})
        assertTrue(result.sources.isEmpty())
        assertTrue(result.ownership.all { it.toInt()==0 })
    }
}
