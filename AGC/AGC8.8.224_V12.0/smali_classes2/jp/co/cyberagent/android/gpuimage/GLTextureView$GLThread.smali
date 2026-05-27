.class Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;
.super Ljava/lang/Thread;
.source "GLTextureView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljp/co/cyberagent/android/gpuimage/GLTextureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GLThread"
.end annotation


# instance fields
.field private eglHelper:Ljp/co/cyberagent/android/gpuimage/GLTextureView$EglHelper;

.field private eventQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private exited:Z

.field private glTextureViewWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljp/co/cyberagent/android/gpuimage/GLTextureView;",
            ">;"
        }
    .end annotation
.end field

.field private hasSurface:Z

.field private haveEglContext:Z

.field private haveEglSurface:Z

.field private height:I

.field private paused:Z

.field private renderComplete:Z

.field private renderMode:I

.field private requestPaused:Z

.field private requestRender:Z

.field private shouldExit:Z

.field private shouldReleaseEglContext:Z

.field private sizeChanged:Z

.field private surfaceIsBad:Z

.field private waitingForSurface:Z

.field private width:I


# direct methods
.method constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljp/co/cyberagent/android/gpuimage/GLTextureView;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "glTextureViewWeakRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljp/co/cyberagent/android/gpuimage/GLTextureView;>;"
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1126
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1638
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->eventQueue:Ljava/util/ArrayList;

    .line 1639
    iput-boolean v1, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->sizeChanged:Z

    .line 1127
    iput v2, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->width:I

    .line 1128
    iput v2, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->height:I

    .line 1129
    iput-boolean v1, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->requestRender:Z

    .line 1130
    iput v1, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->renderMode:I

    .line 1131
    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->glTextureViewWeakRef:Ljava/lang/ref/WeakReference;

    .line 1132
    return-void
.end method

.method static synthetic access$1202(Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;Z)Z
    .locals 0
    .param p0, "x0"    # Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;
    .param p1, "x1"    # Z

    .prologue
    .line 1124
    iput-boolean p1, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->exited:Z

    return p1
.end method

.method private guardedRun()V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1174
    new-instance v19, Ljp/co/cyberagent/android/gpuimage/GLTextureView$EglHelper;

    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->glTextureViewWeakRef:Ljava/lang/ref/WeakReference;

    move-object/from16 v20, v0

    invoke-direct/range {v19 .. v20}, Ljp/co/cyberagent/android/gpuimage/GLTextureView$EglHelper;-><init>(Ljava/lang/ref/WeakReference;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->eglHelper:Ljp/co/cyberagent/android/gpuimage/GLTextureView$EglHelper;

    .line 1175
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->haveEglContext:Z

    .line 1176
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->haveEglSurface:Z

    .line 1178
    const/4 v8, 0x0

    .line 1179
    .local v8, "gl":Ljavax/microedition/khronos/opengles/GL10;
    const/4 v3, 0x0

    .line 1180
    .local v3, "createEglContext":Z
    const/4 v4, 0x0

    .line 1181
    .local v4, "createEglSurface":Z
    const/4 v5, 0x0

    .line 1182
    .local v5, "createGlInterface":Z
    const/4 v10, 0x0

    .line 1183
    .local v10, "lostEglContext":Z
    const/4 v13, 0x0

    .line 1184
    .local v13, "sizeChanged":Z
    const/16 v18, 0x0

    .line 1185
    .local v18, "wantRenderNotification":Z
    const/4 v6, 0x0

    .line 1186
    .local v6, "doRenderNotification":Z
    const/4 v2, 0x0

    .line 1187
    .local v2, "askedToReleaseEglContext":Z
    const/16 v17, 0x0

    .line 1188
    .local v17, "w":I
    const/4 v9, 0x0

    .line 1189
    .local v9, "h":I
    const/4 v7, 0x0

    .line 1192
    .local v7, "event":Ljava/lang/Runnable;
    :cond_0
    :goto_0
    :try_start_0
    invoke-static {}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->access$900()Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThreadManager;

    move-result-object v20

    monitor-enter v20
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1194
    :goto_1
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->shouldExit:Z

    move/from16 v19, v0

    if-eqz v19, :cond_1

    .line 1195
    monitor-exit v20
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1447
    invoke-static {}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->access$900()Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThreadManager;

    move-result-object v20

    monitor-enter v20

    .line 1448
    :try_start_2
    invoke-direct/range {p0 .. p0}, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->stopEglSurfaceLocked()V

    .line 1449
    invoke-direct/range {p0 .. p0}, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->stopEglContextLocked()V

    .line 1450
    monitor-exit v20

    .line 1195
    return-void

    .line 1450
    :catchall_0
    move-exception v19

    monitor-exit v20
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v19

    .line 1198
    :cond_1
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->eventQueue:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_2

    .line 1199
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->eventQueue:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v19

    check-cast v0, Ljava/lang/Runnable;

    move-object v7, v0

    .line 1355
    :goto_2
    monitor-exit v20
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1357
    if-eqz v7, :cond_14

    .line 1358
    :try_start_4
    invoke-interface {v7}, Ljava/lang/Runnable;->run()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1359
    const/4 v7, 0x0

    .line 1360
    goto :goto_0

    .line 1204
    :cond_2
    const/4 v11, 0x0

    .line 1205
    .local v11, "pausing":Z
    :try_start_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->paused:Z

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->requestPaused:Z

    move/from16 v21, v0

    move/from16 v0, v19

    move/from16 v1, v21

    if-eq v0, v1, :cond_3

    .line 1206
    move-object/from16 v0, p0

    iget-boolean v11, v0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->requestPaused:Z

    .line 1207
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->requestPaused:Z

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->paused:Z

    .line 1208
    invoke-static {}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->access$900()Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThreadManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->notifyAll()V

    .line 1215
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->shouldReleaseEglContext:Z

    move/from16 v19, v0

    if-eqz v19, :cond_4

    .line 1219
    invoke-direct/range {p0 .. p0}, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->stopEglSurfaceLocked()V

    .line 1220
    invoke-direct/range {p0 .. p0}, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->stopEglContextLocked()V

    .line 1221
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->shouldReleaseEglContext:Z

    .line 1222
    const/4 v2, 0x1

    .line 1226
    :cond_4
    if-eqz v10, :cond_5

    .line 1227
    invoke-direct/range {p0 .. p0}, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->stopEglSurfaceLocked()V

    .line 1228
    invoke-direct/range {p0 .. p0}, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->stopEglContextLocked()V

    .line 1229
    const/4 v10, 0x0

    .line 1233
    :cond_5
    if-eqz v11, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->haveEglSurface:Z

    move/from16 v19, v0

    if-eqz v19, :cond_6

    .line 1237
    invoke-direct/range {p0 .. p0}, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->stopEglSurfaceLocked()V

    .line 1241
    :cond_6
    if-eqz v11, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->haveEglContext:Z

    move/from16 v19, v0

    if-eqz v19, :cond_8

    .line 1242
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->glTextureViewWeakRef:Ljava/lang/ref/WeakReference;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljp/co/cyberagent/android/gpuimage/GLTextureView;

    .line 1244
    .local v16, "view":Ljp/co/cyberagent/android/gpuimage/GLTextureView;
    if-nez v16, :cond_11

    const/4 v12, 0x0

    .line 1245
    .local v12, "preserveEglContextOnPause":Z
    :goto_3
    if-eqz v12, :cond_7

    .line 1246
    invoke-static {}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->access$900()Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThreadManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThreadManager;->shouldReleaseEGLContextWhenPausing()Z

    move-result v19

    if-eqz v19, :cond_8

    .line 1247
    :cond_7
    invoke-direct/range {p0 .. p0}, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->stopEglContextLocked()V

    .line 1255
    .end local v12    # "preserveEglContextOnPause":Z
    .end local v16    # "view":Ljp/co/cyberagent/android/gpuimage/GLTextureView;
    :cond_8
    if-eqz v11, :cond_9

    .line 1256
    invoke-static {}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->access$900()Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThreadManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThreadManager;->shouldTerminateEGLWhenPausing()Z

    move-result v19

    if-eqz v19, :cond_9

    .line 1257
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->eglHelper:Ljp/co/cyberagent/android/gpuimage/GLTextureView$EglHelper;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljp/co/cyberagent/android/gpuimage/GLTextureView$EglHelper;->finish()V

    .line 1265
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->hasSurface:Z

    move/from16 v19, v0

    if-nez v19, :cond_b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->waitingForSurface:Z

    move/from16 v19, v0

    if-nez v19, :cond_b

    .line 1269
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->haveEglSurface:Z

    move/from16 v19, v0

    if-eqz v19, :cond_a

    .line 1270
    invoke-direct/range {p0 .. p0}, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->stopEglSurfaceLocked()V

    .line 1272
    :cond_a
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->waitingForSurface:Z

    .line 1273
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->surfaceIsBad:Z

    .line 1274
    invoke-static {}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->access$900()Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThreadManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->notifyAll()V

    .line 1278
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->hasSurface:Z

    move/from16 v19, v0

    if-eqz v19, :cond_c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->waitingForSurface:Z

    move/from16 v19, v0

    if-eqz v19, :cond_c

    .line 1282
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->waitingForSurface:Z

    .line 1283
    invoke-static {}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->access$900()Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThreadManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->notifyAll()V

    .line 1286
    :cond_c
    if-eqz v6, :cond_d

    .line 1290
    const/16 v18, 0x0

    .line 1291
    const/4 v6, 0x0

    .line 1292
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->renderComplete:Z

    .line 1293
    invoke-static {}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->access$900()Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThreadManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->notifyAll()V

    .line 1297
    :cond_d
    invoke-direct/range {p0 .. p0}, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->readyToDraw()Z

    move-result v19

    if-eqz v19, :cond_13

    .line 1300
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->haveEglContext:Z

    move/from16 v19, v0

    if-nez v19, :cond_e

    .line 1301
    if-eqz v2, :cond_12

    .line 1302
    const/4 v2, 0x0

    .line 1317
    :cond_e
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->haveEglContext:Z

    move/from16 v19, v0

    if-eqz v19, :cond_f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->haveEglSurface:Z

    move/from16 v19, v0

    if-nez v19, :cond_f

    .line 1318
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->haveEglSurface:Z

    .line 1319
    const/4 v4, 0x1

    .line 1320
    const/4 v5, 0x1

    .line 1321
    const/4 v13, 0x1

    .line 1324
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->haveEglSurface:Z

    move/from16 v19, v0

    if-eqz v19, :cond_13

    .line 1325
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->sizeChanged:Z

    move/from16 v19, v0

    if-eqz v19, :cond_10

    .line 1326
    const/4 v13, 0x1

    .line 1327
    move-object/from16 v0, p0

    iget v0, v0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->width:I

    move/from16 v17, v0

    .line 1328
    move-object/from16 v0, p0

    iget v9, v0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->height:I

    .line 1329
    const/16 v18, 0x1

    .line 1335
    const/4 v4, 0x1

    .line 1337
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->sizeChanged:Z

    .line 1339
    :cond_10
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->requestRender:Z

    .line 1340
    invoke-static {}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->access$900()Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThreadManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->notifyAll()V

    goto/16 :goto_2

    .line 1355
    .end local v11    # "pausing":Z
    :catchall_1
    move-exception v19

    monitor-exit v20
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v19
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1447
    :catchall_2
    move-exception v19

    invoke-static {}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->access$900()Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThreadManager;

    move-result-object v20

    monitor-enter v20

    .line 1448
    :try_start_7
    invoke-direct/range {p0 .. p0}, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->stopEglSurfaceLocked()V

    .line 1449
    invoke-direct/range {p0 .. p0}, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->stopEglContextLocked()V

    .line 1450
    monitor-exit v20
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 1451
    throw v19

    .line 1244
    .restart local v11    # "pausing":Z
    .restart local v16    # "view":Ljp/co/cyberagent/android/gpuimage/GLTextureView;
    :cond_11
    :try_start_8
    invoke-static/range {v16 .. v16}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->access$1000(Ljp/co/cyberagent/android/gpuimage/GLTextureView;)Z

    move-result v12

    goto/16 :goto_3

    .line 1303
    .end local v16    # "view":Ljp/co/cyberagent/android/gpuimage/GLTextureView;
    :cond_12
    invoke-static {}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->access$900()Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThreadManager;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThreadManager;->tryAcquireEglContextLocked(Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-result v19

    if-eqz v19, :cond_e

    .line 1305
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->eglHelper:Ljp/co/cyberagent/android/gpuimage/GLTextureView$EglHelper;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljp/co/cyberagent/android/gpuimage/GLTextureView$EglHelper;->start()V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 1310
    const/16 v19, 0x1

    :try_start_a
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->haveEglContext:Z

    .line 1311
    const/4 v3, 0x1

    .line 1313
    invoke-static {}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->access$900()Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThreadManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->notifyAll()V

    goto/16 :goto_4

    .line 1306
    :catch_0
    move-exception v15

    .line 1307
    .local v15, "t":Ljava/lang/RuntimeException;
    invoke-static {}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->access$900()Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThreadManager;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThreadManager;->releaseEglContextLocked(Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;)V

    .line 1308
    throw v15

    .line 1353
    .end local v15    # "t":Ljava/lang/RuntimeException;
    :cond_13
    invoke-static {}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->access$900()Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThreadManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->wait()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto/16 :goto_1

    .line 1363
    .end local v11    # "pausing":Z
    :cond_14
    if-eqz v4, :cond_16

    .line 1367
    :try_start_b
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->eglHelper:Ljp/co/cyberagent/android/gpuimage/GLTextureView$EglHelper;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljp/co/cyberagent/android/gpuimage/GLTextureView$EglHelper;->createSurface()Z

    move-result v19

    if-nez v19, :cond_15

    .line 1368
    invoke-static {}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->access$900()Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThreadManager;

    move-result-object v20

    monitor-enter v20
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 1369
    const/16 v19, 0x1

    :try_start_c
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->surfaceIsBad:Z

    .line 1370
    invoke-static {}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->access$900()Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThreadManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->notifyAll()V

    .line 1371
    monitor-exit v20

    goto/16 :goto_0

    :catchall_3
    move-exception v19

    monitor-exit v20
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :try_start_d
    throw v19

    .line 1374
    :cond_15
    const/4 v4, 0x0

    .line 1377
    :cond_16
    if-eqz v5, :cond_17

    .line 1378
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->eglHelper:Ljp/co/cyberagent/android/gpuimage/GLTextureView$EglHelper;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljp/co/cyberagent/android/gpuimage/GLTextureView$EglHelper;->createGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v19

    move-object/from16 v0, v19

    check-cast v0, Ljavax/microedition/khronos/opengles/GL10;

    move-object v8, v0

    .line 1380
    invoke-static {}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->access$900()Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThreadManager;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThreadManager;->checkGLDriver(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 1381
    const/4 v5, 0x0

    .line 1384
    :cond_17
    if-eqz v3, :cond_19

    .line 1388
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->glTextureViewWeakRef:Ljava/lang/ref/WeakReference;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljp/co/cyberagent/android/gpuimage/GLTextureView;

    .line 1389
    .restart local v16    # "view":Ljp/co/cyberagent/android/gpuimage/GLTextureView;
    if-eqz v16, :cond_18

    .line 1390
    invoke-static/range {v16 .. v16}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->access$1100(Ljp/co/cyberagent/android/gpuimage/GLTextureView;)Ljp/co/cyberagent/android/gpuimage/GLTextureView$Renderer;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->eglHelper:Ljp/co/cyberagent/android/gpuimage/GLTextureView$EglHelper;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$EglHelper;->eglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v0, v8, v1}, Ljp/co/cyberagent/android/gpuimage/GLTextureView$Renderer;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    .line 1392
    :cond_18
    const/4 v3, 0x0

    .line 1395
    .end local v16    # "view":Ljp/co/cyberagent/android/gpuimage/GLTextureView;
    :cond_19
    if-eqz v13, :cond_1b

    .line 1399
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->glTextureViewWeakRef:Ljava/lang/ref/WeakReference;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljp/co/cyberagent/android/gpuimage/GLTextureView;

    .line 1400
    .restart local v16    # "view":Ljp/co/cyberagent/android/gpuimage/GLTextureView;
    if-eqz v16, :cond_1a

    .line 1401
    invoke-static/range {v16 .. v16}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->access$1100(Ljp/co/cyberagent/android/gpuimage/GLTextureView;)Ljp/co/cyberagent/android/gpuimage/GLTextureView$Renderer;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-interface {v0, v8, v1, v9}, Ljp/co/cyberagent/android/gpuimage/GLTextureView$Renderer;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V

    .line 1403
    :cond_1a
    const/4 v13, 0x0

    .line 1410
    .end local v16    # "view":Ljp/co/cyberagent/android/gpuimage/GLTextureView;
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->glTextureViewWeakRef:Ljava/lang/ref/WeakReference;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljp/co/cyberagent/android/gpuimage/GLTextureView;

    .line 1411
    .restart local v16    # "view":Ljp/co/cyberagent/android/gpuimage/GLTextureView;
    if-eqz v16, :cond_1c

    .line 1412
    invoke-static/range {v16 .. v16}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->access$1100(Ljp/co/cyberagent/android/gpuimage/GLTextureView;)Ljp/co/cyberagent/android/gpuimage/GLTextureView$Renderer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v0, v8}, Ljp/co/cyberagent/android/gpuimage/GLTextureView$Renderer;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 1415
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->eglHelper:Ljp/co/cyberagent/android/gpuimage/GLTextureView$EglHelper;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljp/co/cyberagent/android/gpuimage/GLTextureView$EglHelper;->swap()I

    move-result v14

    .line 1416
    .local v14, "swapError":I
    sparse-switch v14, :sswitch_data_0

    .line 1430
    const-string v19, "GLThread"

    const-string v20, "eglSwapBuffers"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v14}, Ljp/co/cyberagent/android/gpuimage/GLTextureView$EglHelper;->logEglErrorAsWarning(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1432
    invoke-static {}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->access$900()Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThreadManager;

    move-result-object v20

    monitor-enter v20
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 1433
    const/16 v19, 0x1

    :try_start_e
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->surfaceIsBad:Z

    .line 1434
    invoke-static {}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->access$900()Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThreadManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->notifyAll()V

    .line 1435
    monitor-exit v20

    .line 1439
    :goto_5
    :sswitch_0
    if-eqz v18, :cond_0

    .line 1440
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1423
    :sswitch_1
    const/4 v10, 0x1

    .line 1424
    goto :goto_5

    .line 1435
    :catchall_4
    move-exception v19

    monitor-exit v20
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    :try_start_f
    throw v19
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 1450
    .end local v14    # "swapError":I
    .end local v16    # "view":Ljp/co/cyberagent/android/gpuimage/GLTextureView;
    :catchall_5
    move-exception v19

    :try_start_10
    monitor-exit v20
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    throw v19

    .line 1416
    nop

    :sswitch_data_0
    .sparse-switch
        0x3000 -> :sswitch_0
        0x300e -> :sswitch_1
    .end sparse-switch
.end method

.method private readyToDraw()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1459
    iget-boolean v1, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->paused:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->hasSurface:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->surfaceIsBad:Z

    if-nez v1, :cond_1

    iget v1, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->width:I

    if-lez v1, :cond_1

    iget v1, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->height:I

    if-lez v1, :cond_1

    iget-boolean v1, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->requestRender:Z

    if-nez v1, :cond_0

    iget v1, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->renderMode:I

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private stopEglContextLocked()V
    .locals 1

    .prologue
    .line 1166
    iget-boolean v0, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->haveEglContext:Z

    if-eqz v0, :cond_0

    .line 1167
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->eglHelper:Ljp/co/cyberagent/android/gpuimage/GLTextureView$EglHelper;

    invoke-virtual {v0}, Ljp/co/cyberagent/android/gpuimage/GLTextureView$EglHelper;->finish()V

    .line 1168
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->haveEglContext:Z

    .line 1169
    invoke-static {}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->access$900()Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThreadManager;->releaseEglContextLocked(Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;)V

    .line 1171
    :cond_0
    return-void
.end method

.method private stopEglSurfaceLocked()V
    .locals 1

    .prologue
    .line 1155
    iget-boolean v0, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->haveEglSurface:Z

    if-eqz v0, :cond_0

    .line 1156
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->haveEglSurface:Z

    .line 1157
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->eglHelper:Ljp/co/cyberagent/android/gpuimage/GLTextureView$EglHelper;

    invoke-virtual {v0}, Ljp/co/cyberagent/android/gpuimage/GLTextureView$EglHelper;->destroySurface()V

    .line 1159
    :cond_0
    return-void
.end method


# virtual methods
.method public ableToDraw()Z
    .locals 1

    .prologue
    .line 1455
    iget-boolean v0, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->haveEglContext:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->haveEglSurface:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->readyToDraw()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRenderMode()I
    .locals 2

    .prologue
    .line 1474
    invoke-static {}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->access$900()Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1475
    :try_start_0
    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->renderMode:I

    monitor-exit v1

    return v0

    .line 1476
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 1521
    invoke-static {}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->access$900()Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1525
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->requestPaused:Z

    .line 1526
    invoke-static {}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->access$900()Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1527
    :goto_0
    iget-boolean v1, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->exited:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->paused:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1532
    :try_start_1
    invoke-static {}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->access$900()Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1533
    :catch_0
    move-exception v0

    .line 1534
    .local v0, "ex":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1537
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1538
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 1541
    invoke-static {}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->access$900()Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1545
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->requestPaused:Z

    .line 1546
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->requestRender:Z

    .line 1547
    const/4 v1, 0x0

    iput-boolean v1, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->renderComplete:Z

    .line 1548
    invoke-static {}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->access$900()Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1549
    :goto_0
    iget-boolean v1, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->exited:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->paused:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->renderComplete:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1554
    :try_start_1
    invoke-static {}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->access$900()Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1555
    :catch_0
    move-exception v0

    .line 1556
    .local v0, "ex":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1559
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1560
    return-void
.end method

.method public onWindowResize(II)V
    .locals 3
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 1563
    invoke-static {}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->access$900()Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1564
    :try_start_0
    iput p1, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->width:I

    .line 1565
    iput p2, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->height:I

    .line 1566
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->sizeChanged:Z

    .line 1567
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->requestRender:Z

    .line 1568
    const/4 v1, 0x0

    iput-boolean v1, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->renderComplete:Z

    .line 1569
    invoke-static {}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->access$900()Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1572
    :goto_0
    iget-boolean v1, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->exited:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->paused:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->renderComplete:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->ableToDraw()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    .line 1577
    :try_start_1
    invoke-static {}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->access$900()Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1578
    :catch_0
    move-exception v0

    .line 1579
    .local v0, "ex":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1582
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1583
    return-void
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 1612
    if-nez p1, :cond_0

    .line 1613
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "r must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1615
    :cond_0
    invoke-static {}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->access$900()Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1616
    :try_start_0
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->eventQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1617
    invoke-static {}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->access$900()Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1618
    monitor-exit v1

    .line 1619
    return-void

    .line 1618
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public requestExitAndWait()V
    .locals 3

    .prologue
    .line 1588
    invoke-static {}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->access$900()Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1589
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->shouldExit:Z

    .line 1590
    invoke-static {}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->access$900()Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1591
    :goto_0
    iget-boolean v1, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->exited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1593
    :try_start_1
    invoke-static {}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->access$900()Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1594
    :catch_0
    move-exception v0

    .line 1595
    .local v0, "ex":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1598
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1599
    return-void
.end method

.method public requestReleaseEglContextLocked()V
    .locals 1

    .prologue
    .line 1602
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->shouldReleaseEglContext:Z

    .line 1603
    invoke-static {}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->access$900()Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1604
    return-void
.end method

.method public requestRender()V
    .locals 2

    .prologue
    .line 1480
    invoke-static {}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->access$900()Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1481
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->requestRender:Z

    .line 1482
    invoke-static {}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->access$900()Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1483
    monitor-exit v1

    .line 1484
    return-void

    .line 1483
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 1136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GLThread "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->setName(Ljava/lang/String;)V

    .line 1142
    :try_start_0
    invoke-direct {p0}, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->guardedRun()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1146
    invoke-static {}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->access$900()Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThreadManager;->threadExiting(Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;)V

    .line 1148
    :goto_0
    return-void

    .line 1143
    :catch_0
    move-exception v0

    .line 1146
    invoke-static {}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->access$900()Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThreadManager;->threadExiting(Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->access$900()Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThreadManager;->threadExiting(Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;)V

    .line 1147
    throw v0
.end method

.method public setRenderMode(I)V
    .locals 2
    .param p1, "renderMode"    # I

    .prologue
    .line 1464
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    .line 1465
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "renderMode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1467
    :cond_1
    invoke-static {}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->access$900()Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1468
    :try_start_0
    iput p1, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->renderMode:I

    .line 1469
    invoke-static {}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->access$900()Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1470
    monitor-exit v1

    .line 1471
    return-void

    .line 1470
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public surfaceCreated()V
    .locals 3

    .prologue
    .line 1487
    invoke-static {}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->access$900()Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1491
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->hasSurface:Z

    .line 1492
    invoke-static {}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->access$900()Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1493
    :goto_0
    iget-boolean v1, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->waitingForSurface:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->exited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1495
    :try_start_1
    invoke-static {}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->access$900()Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1496
    :catch_0
    move-exception v0

    .line 1497
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1500
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1501
    return-void
.end method

.method public surfaceDestroyed()V
    .locals 3

    .prologue
    .line 1504
    invoke-static {}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->access$900()Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1508
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->hasSurface:Z

    .line 1509
    invoke-static {}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->access$900()Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1510
    :goto_0
    iget-boolean v1, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->waitingForSurface:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->exited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1512
    :try_start_1
    invoke-static {}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->access$900()Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1513
    :catch_0
    move-exception v0

    .line 1514
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1517
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1518
    return-void
.end method
