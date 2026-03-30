.class public Landroid/support/v8/renderscript/BaseObj;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field private mDestroyed:Z

.field private mID:J

.field mRS:Landroid/support/v8/renderscript/RenderScript;


# direct methods
.method public constructor <init>(JLandroid/support/v8/renderscript/RenderScript;)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    iput-boolean p1, p0, Landroid/support/v8/renderscript/BaseObj;->mDestroyed:Z

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    const/4 p1, 0x0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    iput-wide p1, p0, Landroid/support/v8/renderscript/BaseObj;->mID:J

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p3, p0, Landroid/support/v8/renderscript/BaseObj;->mRS:Landroid/support/v8/renderscript/RenderScript;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {p3}, Landroid/support/v8/renderscript/BaseObj;->iHcvcBmYJIpCnfFC(Landroid/support/v8/renderscript/RenderScript;)V

    goto/32 :goto_5

    nop

    nop
.end method

.method public static EXLLgRBbXClesufS(Ljava/util/concurrent/locks/ReentrantReadWriteLock;)Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop

    nop

    nop
.end method

.method public static MPoasGOtpLJulFeb(Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static PVQsfMswOIgPyalI(Landroid/support/v8/renderscript/RenderScript;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static VgQnBGQHFhjqABRT(Landroid/support/v8/renderscript/BaseObj;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Landroid/support/v8/renderscript/BaseObj;->e2b123f4bfb6a6e404ef6ff971d40a0am()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop
.end method

.method private e2b123f4bfb6a6e404ef6ff971d40a0am()V
    .locals 4

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Landroid/support/v8/renderscript/BaseObj;->mRS:Landroid/support/v8/renderscript/RenderScript;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {v1, v2, v3}, Landroid/support/v8/renderscript/BaseObj;->tXHQKBPJPUEALwaB(Landroid/support/v8/renderscript/RenderScript;J)V

    :goto_3
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_4
    invoke-static {v0}, Landroid/support/v8/renderscript/BaseObj;->rOoabtMlTBznTSjZ(Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;)V

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_5
    iget-wide v2, p0, Landroid/support/v8/renderscript/BaseObj;->mID:J

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_7
    if-nez v1, :cond_1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_a
    const-wide/16 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {v0}, Landroid/support/v8/renderscript/BaseObj;->EXLLgRBbXClesufS(Ljava/util/concurrent/locks/ReentrantReadWriteLock;)Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_c
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v1, p0, Landroid/support/v8/renderscript/BaseObj;->mRS:Landroid/support/v8/renderscript/RenderScript;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v1, p0, Landroid/support/v8/renderscript/BaseObj;->mRS:Landroid/support/v8/renderscript/RenderScript;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_11
    iput-wide v0, p0, Landroid/support/v8/renderscript/BaseObj;->mID:J

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const v1, 0x13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_14
    monitor-enter p0

    nop

    :try_start_1
    iget-boolean v0, p0, Landroid/support/v8/renderscript/BaseObj;->mDestroyed:Z

    nop

    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    nop

    iput-boolean v0, p0, Landroid/support/v8/renderscript/BaseObj;->mDestroyed:Z

    nop

    nop

    goto :goto_15

    nop

    nop

    nop

    :cond_2
    const/4 v0, 0x0

    nop

    :goto_15
    monitor-exit p0

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_16
    if-nez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_17
    invoke-static {v0}, Landroid/support/v8/renderscript/BaseObj;->MPoasGOtpLJulFeb(Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget-object v0, v0, Landroid/support/v8/renderscript/RenderScript;->mRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_19
    const v0, 0x18

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_1a
    invoke-static {v1}, Landroid/support/v8/renderscript/BaseObj;->kLRvTBebHANWpnKT(Landroid/support/v8/renderscript/RenderScript;)Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1b
    throw v0

    nop

    :goto_1c
    goto/32 :goto_1e

    nop

    nop

    :goto_1d
    iput-object v0, p0, Landroid/support/v8/renderscript/BaseObj;->mRS:Landroid/support/v8/renderscript/RenderScript;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_e

    nop

    nop

    nop

    nop
.end method

.method public static iHcvcBmYJIpCnfFC(Landroid/support/v8/renderscript/RenderScript;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    goto/32 :goto_0

    nop

    nop
.end method

.method public static kLRvTBebHANWpnKT(Landroid/support/v8/renderscript/RenderScript;)Z
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->isAlive()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static mAbAghYhKbbtWDIv(Ljava/lang/Object;)Ljava/lang/Class;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static nEfyNWOueymvDgmt(Ljava/lang/Object;)Ljava/lang/Class;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static rOoabtMlTBznTSjZ(Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static rRlojXjwjwPHCxAn(Ljava/lang/Object;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static tXHQKBPJPUEALwaB(Landroid/support/v8/renderscript/RenderScript;J)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1, p2}, Landroid/support/v8/renderscript/RenderScript;->nObjDestroy(J)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static uFOUGcDDlXfFracN(Landroid/support/v8/renderscript/BaseObj;)Landroid/renderscript/BaseObj;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/support/v8/renderscript/BaseObj;->getNObj()Landroid/renderscript/BaseObj;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static xNYHTpQNCCNndVvZ(Landroid/support/v8/renderscript/BaseObj;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-direct {p0}, Landroid/support/v8/renderscript/BaseObj;->e2b123f4bfb6a6e404ef6ff971d40a0am()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public checkValid()V
    .locals 4

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_0
    iget-wide v0, p0, Landroid/support/v8/renderscript/BaseObj;->mID:J

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_1
    const-string v0, "Invalid object."

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_3
    goto/16 :goto_16

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    :goto_7
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_8
    const v1, 0x20

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {p0}, Landroid/support/v8/renderscript/BaseObj;->uFOUGcDDlXfFracN(Landroid/support/v8/renderscript/BaseObj;)Landroid/renderscript/BaseObj;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_b
    const-wide/16 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_c
    goto/32 :goto_7

    nop

    :goto_d
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_e
    invoke-direct {p0, v0}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_f
    cmp-long v0, v0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    new-instance p0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_11
    if-nez p0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const v0, 0x1c

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_13
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_c

    nop

    :goto_14
    if-eqz v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :cond_2
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_15
    throw p0

    nop

    :goto_16
    goto/32 :goto_6

    nop

    nop
.end method

.method public destroy()V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-eqz v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {p0}, Landroid/support/v8/renderscript/BaseObj;->xNYHTpQNCCNndVvZ(Landroid/support/v8/renderscript/BaseObj;)V

    goto/32 :goto_0

    nop

    nop

    :goto_4
    iget-boolean v0, p0, Landroid/support/v8/renderscript/BaseObj;->mDestroyed:Z

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_5
    new-instance p0, Landroid/support/v8/renderscript/RSInvalidStateException;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {p0, v0}, Landroid/support/v8/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_7
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const-string v0, "Object already destroyed."

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_2
    return v0

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_4
    if-eqz p0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0x4

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-ne v2, v3, :cond_1

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :cond_1
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return v1

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_d

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_a
    iget-wide v2, p0, Landroid/support/v8/renderscript/BaseObj;->mID:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_d
    invoke-static {p0}, Landroid/support/v8/renderscript/BaseObj;->nEfyNWOueymvDgmt(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_b

    nop

    :goto_10
    cmp-long p0, v2, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_11
    if-eqz p1, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_12
    return v1

    nop

    :goto_13
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-wide p0, p1, Landroid/support/v8/renderscript/BaseObj;->mID:J

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_15
    if-eq p0, p1, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-static {p1}, Landroid/support/v8/renderscript/BaseObj;->mAbAghYhKbbtWDIv(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_17
    return v1

    nop

    nop

    :goto_18
    goto/32 :goto_19

    nop

    nop

    :goto_19
    check-cast p1, Landroid/support/v8/renderscript/BaseObj;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1a
    const/4 v1, 0x0

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_1b
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_1c
    const v0, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop
.end method

.method protected finalize()V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-static {p0}, Landroid/support/v8/renderscript/BaseObj;->rRlojXjwjwPHCxAn(Ljava/lang/Object;)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    invoke-static {p0}, Landroid/support/v8/renderscript/BaseObj;->VgQnBGQHFhjqABRT(Landroid/support/v8/renderscript/BaseObj;)V

    goto/32 :goto_1

    nop

    nop
.end method

.method public getID(Landroid/support/v8/renderscript/RenderScript;)J
    .locals 4

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/16 :goto_15

    nop

    nop

    :goto_1
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_2
    throw p0

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_1c

    nop

    nop

    :goto_4
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_6
    new-instance p0, Landroid/support/v8/renderscript/RSRuntimeException;

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_7
    throw p0

    nop

    :goto_8
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_a
    const-wide/16 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_b
    if-eq p1, p0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_1
    goto/32 :goto_0

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_d
    if-nez v2, :cond_2

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_e
    iget-wide v0, p0, Landroid/support/v8/renderscript/BaseObj;->mID:J

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_f
    if-nez p1, :cond_3

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    return-wide v0

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    cmp-long v2, v0, v2

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_13
    new-instance p0, Landroid/support/v8/renderscript/RSInvalidStateException;

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_14
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_16
    iget-boolean v0, p0, Landroid/support/v8/renderscript/BaseObj;->mDestroyed:Z

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-direct {p0, p1}, Landroid/support/v8/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_18
    const-string p1, "Internal error: Object id 0."

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_19
    new-instance p0, Landroid/support/v8/renderscript/RSInvalidStateException;

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-direct {p0, p1}, Landroid/support/v8/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1b
    const v1, 0x20

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_1e
    const-string p1, "using object with mismatched context."

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_1f
    const-string p1, "using a destroyed object."

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_20
    const v0, 0xd

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_21
    invoke-static {v0}, Landroid/support/v8/renderscript/BaseObj;->PVQsfMswOIgPyalI(Landroid/support/v8/renderscript/RenderScript;)V

    goto/32 :goto_16

    nop

    nop

    :goto_22
    invoke-direct {p0, p1}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iget-object p0, p0, Landroid/support/v8/renderscript/BaseObj;->mRS:Landroid/support/v8/renderscript/RenderScript;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_24
    iget-object v0, p0, Landroid/support/v8/renderscript/BaseObj;->mRS:Landroid/support/v8/renderscript/RenderScript;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_25
    if-eqz v0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    :cond_4
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public getNObj()Landroid/renderscript/BaseObj;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop
.end method

.method public hashCode()I
    .locals 4

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    long-to-int p0, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_d

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-wide v0, p0, Landroid/support/v8/renderscript/BaseObj;->mID:J

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_4
    shr-long/2addr v0, p0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_6
    const-wide/32 v2, 0xfffffff

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0x5

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_8
    const/16 p0, 0x20

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    return p0

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_b
    and-long/2addr v2, v0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const v1, 0x1f

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_10
    xor-long/2addr v0, v2

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public setID(J)V
    .locals 4

    goto/32 :goto_d

    nop

    nop

    :goto_0
    goto/32 :goto_3

    nop

    nop

    :goto_1
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_2
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_4
    new-instance p0, Landroid/support/v8/renderscript/RSRuntimeException;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_7
    invoke-direct {p0, p1}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-wide v0, p0, Landroid/support/v8/renderscript/BaseObj;->mID:J

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0x15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iput-wide p1, p0, Landroid/support/v8/renderscript/BaseObj;->mID:J

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0x1a

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_e
    if-eqz v0, :cond_1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_b

    nop

    nop

    :goto_f
    return-void

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_11
    const-string p1, "Internal Error, reset of object ID."

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_12
    cmp-long v0, v0, v2

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_13
    const-wide/16 v2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop
.end method
