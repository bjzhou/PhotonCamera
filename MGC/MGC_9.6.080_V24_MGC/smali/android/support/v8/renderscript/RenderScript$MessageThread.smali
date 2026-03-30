.class Landroid/support/v8/renderscript/RenderScript$MessageThread;
.super Ljava/lang/Thread;
.source "PG"


# static fields
.field static final RS_ERROR_FATAL_UNKNOWN:I = 0x1000

.field static final RS_MESSAGE_TO_CLIENT_ERROR:I = 0x3

.field static final RS_MESSAGE_TO_CLIENT_EXCEPTION:I = 0x1

.field static final RS_MESSAGE_TO_CLIENT_NONE:I = 0x0

.field static final RS_MESSAGE_TO_CLIENT_RESIZE:I = 0x2

.field static final RS_MESSAGE_TO_CLIENT_USER:I = 0x4


# instance fields
.field mAuxData:[I

.field mRS:Landroid/support/v8/renderscript/RenderScript;

.field mRun:Z


# direct methods
.method public constructor <init>(Landroid/support/v8/renderscript/RenderScript;)V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript$MessageThread;->mAuxData:[I

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1
    new-array v0, v0, [I

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    iput-boolean v0, p0, Landroid/support/v8/renderscript/RenderScript$MessageThread;->mRun:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_4
    const-string v0, "RSMessageThread"

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    :goto_6
    const/4 v0, 0x2

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_7
    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iput-object p1, p0, Landroid/support/v8/renderscript/RenderScript$MessageThread;->mRS:Landroid/support/v8/renderscript/RenderScript;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop
.end method

.method public static ErjBegTGtRswSmfH(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return v0

    nop

    nop

    nop

    nop
.end method

.method public static HqyiokNmxvKSQyXG(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
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

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static HyULxLWoIaKIlMFW(Landroid/support/v8/renderscript/RenderScript;J)Ljava/lang/String;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, p2}, Landroid/support/v8/renderscript/RenderScript;->nContextGetErrorMessage(J)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

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

.method public static IEftbuuQBtzapyyE(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static QtQrtESvOZMeSJOr(Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public static XpusPZPXwvzpCruM(Landroid/support/v8/renderscript/RenderScript;J)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-virtual {p0, p1, p2}, Landroid/support/v8/renderscript/RenderScript;->nContextInitToClient(J)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static biuFcgdqvrGknDke(Landroid/support/v8/renderscript/RenderScript$RSMessageHandler;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript$RSMessageHandler;->run()V

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
.end method

.method public static bwFMcJIpcNVLCKbk(Landroid/support/v8/renderscript/RenderScript$RSErrorHandler;)V
    .locals 0

    goto/32 :goto_1

    nop

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
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript$RSErrorHandler;->run()V

    goto/32 :goto_0

    nop

    nop
.end method

.method public static cxpSiSQpXazbvTZs(Landroid/support/v8/renderscript/RenderScript;J[I)I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v8/renderscript/RenderScript;->nContextGetUserMessage(J[I)I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return v0

    nop

    nop

    nop

    nop
.end method

.method public static deLVFUfLJqoOiJgu(Landroid/support/v8/renderscript/RenderScript;J[I)I
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v8/renderscript/RenderScript;->nContextPeekMessage(J[I)I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static dlQHWphjHKcZGbAP(JI)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-static {p0, p1, p2}, Landroid/support/v8/renderscript/RenderScript$MessageThread;->sleep(JI)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method public static ecXlICHDgigrrivN(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop

    nop

    nop
.end method

.method public static itQXUMycRdyeApes(Ljava/lang/StringBuilder;I)Ljava/lang/StringBuilder;
    .locals 1

    goto/32 :goto_1

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
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static ytbEFGWsaKAdlisO(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop
.end method


# virtual methods
.method public run()V
    .locals 8

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_0
    iput-object v0, v1, Landroid/support/v8/renderscript/RenderScript$RSMessageHandler;->mData:[I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    :goto_1
    invoke-static {v2, v3, v4, v5}, Landroid/support/v8/renderscript/RenderScript$MessageThread;->deLVFUfLJqoOiJgu(Landroid/support/v8/renderscript/RenderScript;J[I)I

    move-result v2

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_2
    new-array v0, v0, [I

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_6
    invoke-static {v1, v2, v3}, Landroid/support/v8/renderscript/RenderScript$MessageThread;->XpusPZPXwvzpCruM(Landroid/support/v8/renderscript/RenderScript;J)V

    :catch_0
    :goto_7
    goto/32 :goto_60

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v3, p0, Landroid/support/v8/renderscript/RenderScript$MessageThread;->mAuxData:[I

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-eq v2, v5, :cond_0

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_b
    new-instance p0, Landroid/support/v8/renderscript/RSDriverException;

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_c
    shr-int/lit8 v0, v0, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v1, p0, Landroid/support/v8/renderscript/RenderScript$MessageThread;->mRS:Landroid/support/v8/renderscript/RenderScript;

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_e
    invoke-static {v1, v6, v7, v0}, Landroid/support/v8/renderscript/RenderScript$MessageThread;->cxpSiSQpXazbvTZs(Landroid/support/v8/renderscript/RenderScript;J[I)I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_f
    iput-object v1, v2, Landroid/support/v8/renderscript/RenderScript$RSErrorHandler;->mErrorMessage:Ljava/lang/String;

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_10
    if-eq v1, v5, :cond_1

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_11
    if-nez v1, :cond_2

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    :cond_2
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iput v3, v2, Landroid/support/v8/renderscript/RenderScript$RSErrorHandler;->mErrorNum:I

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_13
    const v0, 0x3

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_14
    invoke-static {v3, v1}, Landroid/support/v8/renderscript/RenderScript$MessageThread;->HqyiokNmxvKSQyXG(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_15
    array-length v2, v0

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const-string v2, ", details: "

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget-object v5, p0, Landroid/support/v8/renderscript/RenderScript$MessageThread;->mAuxData:[I

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_18
    goto/16 :goto_7

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    shr-int/lit8 v1, v4, 0x2

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object v1, p0, Landroid/support/v8/renderscript/RenderScript$MessageThread;->mRS:Landroid/support/v8/renderscript/RenderScript;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/16 :goto_7

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_1e
    const-string v3, "non fatal RS error, "

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

    :goto_1f
    invoke-static {v0, v2}, Landroid/support/v8/renderscript/RenderScript$MessageThread;->ytbEFGWsaKAdlisO(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    new-instance p0, Landroid/support/v8/renderscript/RSRuntimeException;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_21
    if-lt v3, v2, :cond_3

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    if-nez v2, :cond_4

    nop

    goto/32 :goto_2d

    nop

    nop

    :cond_4
    goto/32 :goto_f

    nop

    nop

    :goto_23
    iget-object v1, v1, Landroid/support/v8/renderscript/RenderScript;->mMessageCallback:Landroid/support/v8/renderscript/RenderScript$RSMessageHandler;

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_24
    add-int/lit8 v0, v4, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_25
    if-eq v2, v4, :cond_5

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-static {v1}, Landroid/support/v8/renderscript/RenderScript$MessageThread;->ecXlICHDgigrrivN(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_27
    new-array v0, v0, [I

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_28
    throw p0

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    throw p0

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_2c
    goto/16 :goto_7

    nop

    nop

    :goto_2d
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    const/4 v4, 0x1

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_2f
    const/16 v2, 0x1000

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_30
    const-string v0, "Error processing message from RenderScript."

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_31
    invoke-static {v0, v3}, Landroid/support/v8/renderscript/RenderScript$MessageThread;->itQXUMycRdyeApes(Ljava/lang/StringBuilder;I)Ljava/lang/StringBuilder;

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_32
    if-nez v1, :cond_6

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    invoke-static {v1, v4, v5}, Landroid/support/v8/renderscript/RenderScript$MessageThread;->HyULxLWoIaKIlMFW(Landroid/support/v8/renderscript/RenderScript;J)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    invoke-static {v1}, Landroid/support/v8/renderscript/RenderScript$MessageThread;->biuFcgdqvrGknDke(Landroid/support/v8/renderscript/RenderScript$RSMessageHandler;)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    const v1, 0x1a

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_36
    iget-wide v4, v1, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_37
    const-wide/16 v2, 0x1

    nop

    nop

    nop

    :try_start_0
    invoke-static {v2, v3, v1}, Landroid/support/v8/renderscript/RenderScript$MessageThread;->dlQHWphjHKcZGbAP(JI)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_4b

    nop

    nop

    :goto_38
    iget-object v2, v2, Landroid/support/v8/renderscript/RenderScript;->mErrorCallback:Landroid/support/v8/renderscript/RenderScript$RSErrorHandler;

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_39
    iget-object v2, p0, Landroid/support/v8/renderscript/RenderScript$MessageThread;->mRS:Landroid/support/v8/renderscript/RenderScript;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    const-string v2, "RenderScript_jni"

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    aget v4, v3, v4

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    :goto_3c
    invoke-static {v2}, Landroid/support/v8/renderscript/RenderScript$MessageThread;->bwFMcJIpcNVLCKbk(Landroid/support/v8/renderscript/RenderScript$RSErrorHandler;)V

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-direct {p0, v0}, Landroid/support/v8/renderscript/RSDriverException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    const/16 v0, 0x10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_3f
    rem-int v0, v0, v1

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :goto_40
    invoke-static {v0}, Landroid/support/v8/renderscript/RenderScript$MessageThread;->QtQrtESvOZMeSJOr(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_41
    iget-wide v2, v1, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_42
    iget-object v2, p0, Landroid/support/v8/renderscript/RenderScript$MessageThread;->mRS:Landroid/support/v8/renderscript/RenderScript;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_44
    invoke-static {v2, v1}, Landroid/support/v8/renderscript/RenderScript$MessageThread;->ErjBegTGtRswSmfH(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_45
    aput v1, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_46
    iget-object v1, p0, Landroid/support/v8/renderscript/RenderScript$MessageThread;->mRS:Landroid/support/v8/renderscript/RenderScript;

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_47
    iput v4, v1, Landroid/support/v8/renderscript/RenderScript$RSMessageHandler;->mLength:I

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_48
    iget-wide v6, v1, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    const-string v2, "Fatal error "

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    :goto_4a
    const/4 v4, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    goto/16 :goto_7

    nop

    nop

    nop

    :goto_4c
    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_4d
    const/4 v5, 0x4

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    const-string v0, "Received a message from the script with no message handler installed."

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_4f
    invoke-static {v0, v1}, Landroid/support/v8/renderscript/RenderScript$MessageThread;->IEftbuuQBtzapyyE(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_51
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_52
    invoke-direct {p0, v0}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_53
    invoke-direct {p0, v0}, Landroid/support/v8/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_54
    new-instance p0, Landroid/support/v8/renderscript/RSInvalidStateException;

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_55
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_31

    nop

    nop

    :goto_56
    aget v3, v3, v1

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_57
    iget-object v1, p0, Landroid/support/v8/renderscript/RenderScript$MessageThread;->mRS:Landroid/support/v8/renderscript/RenderScript;

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_58
    throw p0

    nop

    :goto_59
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    goto/32 :goto_51

    nop

    nop

    :goto_5b
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    iput v3, v1, Landroid/support/v8/renderscript/RenderScript$RSMessageHandler;->mID:I

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_5d
    iget-wide v3, v2, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    if-lez v0, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_5a

    nop

    :goto_5f
    if-ge v1, v2, :cond_8

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_60
    iget-boolean v1, p0, Landroid/support/v8/renderscript/RenderScript$MessageThread;->mRun:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop
.end method
