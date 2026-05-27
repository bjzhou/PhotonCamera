.class public final Lvt;
.super Ljava/lang/Object;

# interfaces
.implements Lrb;


# instance fields
.field private final a:Lvz;

.field private final b:Lvy;

.field private final c:Lwm;

.field private final d:Lwo;

.field private final e:Lqx;

.field private final f:I

.field private final g:Lvo;

.field private final h:Lvx;


# direct methods
.method public constructor <init>(Lqz;Lrd;Lvz;Lvy;Lwm;Lwo;Lqx;Lnt;Lwi;[B)V
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lvt;->a:Lvz;

    iput-object p4, p0, Lvt;->b:Lvy;

    iput-object p5, p0, Lvt;->c:Lwm;

    iput-object p6, p0, Lvt;->d:Lwo;

    iput-object p7, p0, Lvt;->e:Lqx;

    sget-object p3, Lvu;->a:Loon;

    invoke-virtual {p3}, Loon;->b()I

    move-result p3

    iput p3, p0, Lvt;->f:I

    new-instance p3, Lvo;

    invoke-direct {p3}, Lvo;-><init>()V

    iput-object p3, p0, Lvt;->g:Lvo;

    new-instance p3, Lvx;

    invoke-direct {p3}, Lvx;-><init>()V

    iput-object p3, p0, Lvt;->h:Lvx;

    sget-object p3, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p2, p3}, Lrd;->a(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p4

    if-nez p4, :cond_1

    const-string p3, "Front"

    goto :goto_3

    :cond_1
    :goto_0
    if-nez p3, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p4

    const/4 p6, 0x1

    if-ne p4, p6, :cond_3

    const-string p3, "Back"

    goto :goto_3

    :cond_3
    :goto_1
    if-nez p3, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    const/4 p4, 0x2

    if-ne p3, p4, :cond_5

    const-string p3, "External"

    goto :goto_3

    :cond_5
    :goto_2
    const-string p3, "Unknown"

    :goto_3
    sget-object p4, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_CAPABILITIES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p2, p4}, Lrd;->a(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [I

    if-eqz p2, :cond_6

    const/16 p4, 0xb

    invoke-static {p2, p4}, Lljr;->aA([II)Z

    move-result p2

    if-eqz p2, :cond_6

    const-string p2, "Logical"

    goto :goto_4

    :cond_6
    const-string p2, "Physical"

    :goto_4
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p7, " (Camera "

    invoke-virtual {p6, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p7, p1, Lqz;->a:Ljava/lang/String;

    invoke-virtual {p6, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p7, ")\n"

    invoke-virtual {p6, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    const-string p8, "  Facing:    "

    invoke-virtual {p6, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " ("

    invoke-virtual {p6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "  Mode:      Normal\nOutputs:\n"

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p5, Lwm;->c:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_7
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_25

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lrj;

    iget-object p3, p3, Lrj;->b:Ljava/util/List;

    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    const/4 p5, 0x0

    const/4 p6, 0x0

    :goto_5
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p7

    if-eqz p7, :cond_7

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p7

    add-int/lit8 p8, p6, 0x1

    if-gez p6, :cond_8

    invoke-static {}, Lljr;->ag()V

    :cond_8
    check-cast p7, Lwl;

    const-string p9, "  "

    invoke-virtual {p4, p9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p6, :cond_a

    iget-object p6, p7, Lwl;->e:Lrj;

    if-nez p6, :cond_9

    const-string p6, "stream"

    invoke-static {p6}, Lone;->b(Ljava/lang/String;)V

    const/4 p6, 0x0

    :cond_9
    iget p6, p6, Lrj;->a:I

    invoke-static {p6}, Lsc;->b(I)Ljava/lang/String;

    move-result-object p6

    goto :goto_6

    :cond_a
    const-string p6, ""

    :goto_6
    const/16 p9, 0xa

    invoke-static {p6, p9}, Lolp;->y(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p6, p7, Lwl;->a:I

    invoke-static {p6}, Lrs;->a(I)Ljava/lang/String;

    move-result-object p6

    invoke-static {p6, p9}, Lolp;->y(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p6, p7, Lwl;->b:Landroid/util/Size;

    invoke-virtual {p6}, Landroid/util/Size;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 p9, 0xc

    invoke-static {p6, p9}, Lolp;->y(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p6, p7, Lwl;->c:I

    invoke-static {p6, p5}, Lsa;->a(II)Z

    move-result p9

    const/16 p10, 0x10

    if-eqz p9, :cond_b

    const-string p6, "UNKNOWN"

    goto/16 :goto_7

    :cond_b
    const/16 p9, 0x22

    invoke-static {p6, p9}, Lsa;->a(II)Z

    move-result p9

    if-eqz p9, :cond_c

    const-string p6, "PRIVATE"

    goto/16 :goto_7

    :cond_c
    const p9, 0x44363159

    invoke-static {p6, p9}, Lsa;->a(II)Z

    move-result p9

    if-eqz p9, :cond_d

    const-string p6, "DEPTH16"

    goto/16 :goto_7

    :cond_d
    const p9, 0x69656963

    invoke-static {p6, p9}, Lsa;->a(II)Z

    move-result p9

    if-eqz p9, :cond_e

    const-string p6, "DEPTH_JPEG"

    goto/16 :goto_7

    :cond_e
    const/16 p9, 0x101

    invoke-static {p6, p9}, Lsa;->a(II)Z

    move-result p9

    if-eqz p9, :cond_f

    const-string p6, "DEPTH_POINT_CLOUD"

    goto/16 :goto_7

    :cond_f
    const/16 p9, 0x29

    invoke-static {p6, p9}, Lsa;->a(II)Z

    move-result p9

    if-eqz p9, :cond_10

    const-string p6, "FLEX_RGB_888"

    goto/16 :goto_7

    :cond_10
    const/16 p9, 0x2a

    invoke-static {p6, p9}, Lsa;->a(II)Z

    move-result p9

    if-eqz p9, :cond_11

    const-string p6, "FLEX_RGBA_8888"

    goto/16 :goto_7

    :cond_11
    const p9, 0x48454946

    invoke-static {p6, p9}, Lsa;->a(II)Z

    move-result p9

    if-eqz p9, :cond_12

    const-string p6, "HEIC"

    goto/16 :goto_7

    :cond_12
    const/16 p9, 0x100

    invoke-static {p6, p9}, Lsa;->a(II)Z

    move-result p9

    if-eqz p9, :cond_13

    const-string p6, "JPEG"

    goto/16 :goto_7

    :cond_13
    invoke-static {p6, p10}, Lsa;->a(II)Z

    move-result p9

    if-eqz p9, :cond_14

    const-string p6, "NV16"

    goto/16 :goto_7

    :cond_14
    const/16 p9, 0x11

    invoke-static {p6, p9}, Lsa;->a(II)Z

    move-result p9

    if-eqz p9, :cond_15

    const-string p6, "NV21"

    goto/16 :goto_7

    :cond_15
    const/16 p9, 0x25

    invoke-static {p6, p9}, Lsa;->a(II)Z

    move-result p9

    if-eqz p9, :cond_16

    const-string p6, "RAW10"

    goto/16 :goto_7

    :cond_16
    const/16 p9, 0x26

    invoke-static {p6, p9}, Lsa;->a(II)Z

    move-result p9

    if-eqz p9, :cond_17

    const-string p6, "RAW12"

    goto/16 :goto_7

    :cond_17
    const/16 p9, 0x1002

    invoke-static {p6, p9}, Lsa;->a(II)Z

    move-result p9

    if-eqz p9, :cond_18

    const-string p6, "RAW_DEPTH"

    goto/16 :goto_7

    :cond_18
    const/16 p9, 0x24

    invoke-static {p6, p9}, Lsa;->a(II)Z

    move-result p9

    if-eqz p9, :cond_19

    const-string p6, "RAW_PRIVATE"

    goto/16 :goto_7

    :cond_19
    const/16 p9, 0x20

    invoke-static {p6, p9}, Lsa;->a(II)Z

    move-result p9

    if-eqz p9, :cond_1a

    const-string p6, "RAW_SENSOR"

    goto/16 :goto_7

    :cond_1a
    const/4 p9, 0x4

    invoke-static {p6, p9}, Lsa;->a(II)Z

    move-result p9

    if-eqz p9, :cond_1b

    const-string p6, "RGB_565"

    goto/16 :goto_7

    :cond_1b
    const p9, 0x32315659

    invoke-static {p6, p9}, Lsa;->a(II)Z

    move-result v0

    if-eqz v0, :cond_1c

    const-string p6, "Y12"

    goto :goto_7

    :cond_1c
    const v0, 0x20363159

    invoke-static {p6, v0}, Lsa;->a(II)Z

    move-result v0

    if-eqz v0, :cond_1d

    const-string p6, "Y16"

    goto :goto_7

    :cond_1d
    const v0, 0x20203859

    invoke-static {p6, v0}, Lsa;->a(II)Z

    move-result v0

    if-eqz v0, :cond_1e

    const-string p6, "Y8"

    goto :goto_7

    :cond_1e
    const/16 v0, 0x23

    invoke-static {p6, v0}, Lsa;->a(II)Z

    move-result v0

    if-eqz v0, :cond_1f

    const-string p6, "YUV_420_888"

    goto :goto_7

    :cond_1f
    const/16 v0, 0x27

    invoke-static {p6, v0}, Lsa;->a(II)Z

    move-result v0

    if-eqz v0, :cond_20

    const-string p6, "YUV_422_888"

    goto :goto_7

    :cond_20
    const/16 v0, 0x28

    invoke-static {p6, v0}, Lsa;->a(II)Z

    move-result v0

    if-eqz v0, :cond_21

    const-string p6, "YUV_444_888"

    goto :goto_7

    :cond_21
    const/16 v0, 0x14

    invoke-static {p6, v0}, Lsa;->a(II)Z

    move-result v0

    if-eqz v0, :cond_22

    const-string p6, "YUY2"

    goto :goto_7

    :cond_22
    invoke-static {p6, p9}, Lsa;->a(II)Z

    move-result p9

    if-eqz p9, :cond_23

    const-string p6, "YV12"

    goto :goto_7

    :cond_23
    invoke-static {p10}, Lolp;->I(I)V

    invoke-static {p6, p10}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p9, "UNKNOWN-"

    invoke-virtual {p9, p6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p6

    :goto_7
    invoke-static {p6, p10}, Lolp;->y(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p6, p7, Lwl;->d:Ljava/lang/String;

    iget-object p9, p1, Lqz;->a:Ljava/lang/String;

    invoke-static {p6, p9}, Lone;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p6

    if-nez p6, :cond_24

    const-string p6, " ["

    invoke-virtual {p4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p6, p7, Lwl;->d:Ljava/lang/String;

    invoke-static {p6}, Lrc;->a(Ljava/lang/String;)Lrc;

    move-result-object p6

    invoke-virtual {p4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p6, "]"

    invoke-virtual {p4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_24
    const-string p6, "\n"

    invoke-virtual {p4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move p6, p8

    goto/16 :goto_5

    :cond_25
    const-string p1, "Session Template: TEMPLATE_PREVIEW\n"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "Session Parameters"

    invoke-static {p4, p1}, Llj;->b(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const-string p1, "Default Template: TEMPLATE_PREVIEW\n"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "Default Parameters"

    invoke-static {p4, p1}, Llj;->b(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const-string p1, "Required Parameters"

    invoke-static {p4, p1}, Llj;->b(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()Lsb;
    .locals 1

    iget-object v0, p0, Lvt;->c:Lwm;

    return-object v0
.end method

.method public final b(Loku;)Ljava/lang/Object;
    .locals 9

    instance-of v0, p1, Lvs;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lvs;

    iget v1, v0, Lvs;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lvs;->c:I

    goto :goto_0

    :cond_0
    new-instance v0, Lvs;

    invoke-direct {v0, p0, p1}, Lvs;-><init>(Lvt;Loku;)V

    :goto_0
    iget-object p1, v0, Lvs;->a:Ljava/lang/Object;

    sget-object v1, Lolc;->a:Lolc;

    iget v2, v0, Lvs;->c:I

    packed-switch v2, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    iget-object v0, v0, Lvs;->d:Lvt;

    invoke-static {p1}, Lljr;->aO(Ljava/lang/Object;)V

    goto :goto_2

    :pswitch_1
    invoke-static {p1}, Lljr;->aO(Ljava/lang/Object;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "#acquireSession"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object p1, p0, Lvt;->g:Lvo;

    iput-object p0, v0, Lvs;->d:Lvt;

    const/4 v2, 0x1

    iput v2, v0, Lvs;->c:I

    new-instance v3, Lopa;

    invoke-static {v0}, Lolp;->g(Loku;)Loku;

    move-result-object v0

    invoke-direct {v3, v0, v2}, Lopa;-><init>(Loku;I)V

    invoke-virtual {v3}, Lopa;->x()V

    iget-object v0, p1, Lvo;->b:Ljava/util/ArrayDeque;

    monitor-enter v0

    :try_start_0
    iget-boolean v4, p1, Lvo;->c:Z

    if-nez v4, :cond_3

    iget-object v4, p1, Lvo;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-wide v4, p1, Lvo;->d:J

    const-wide/16 v6, 0x1

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    cmp-long v8, v4, v6

    if-ltz v8, :cond_1

    iget-wide v6, p1, Lvo;->d:J

    sub-long/2addr v6, v4

    iput-wide v6, p1, Lvo;->d:J

    new-instance v2, Lvm;

    invoke-direct {v2, p1, v4, v5}, Lvm;-><init>(Lvo;J)V

    invoke-interface {v3, v2}, Loku;->e(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    goto :goto_1

    :cond_1
    :try_start_1
    iget-object v4, p1, Lvo;->b:Ljava/util/ArrayDeque;

    new-instance v5, Lvn;

    invoke-direct {v5, v3}, Lvn;-><init>(Looz;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    new-instance v0, Lawq;

    invoke-direct {v0, p1, v2}, Lawq;-><init>(Lvo;I)V

    invoke-interface {v3, v0}, Looz;->a(Lomk;)V

    :goto_1
    invoke-virtual {v3}, Lopa;->m()Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_2

    return-object v1

    :cond_2
    move-object v0, p0

    :goto_2
    check-cast p1, Lvm;

    new-instance v1, Lvv;

    iget-object v2, v0, Lvt;->a:Lvz;

    iget-object v0, v0, Lvt;->h:Lvx;

    invoke-direct {v1, p1, v2}, Lvv;-><init>(Lvm;Lvz;)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-object v1

    :cond_3
    :try_start_2
    sget-object p1, Lvo;->a:Ljava/util/concurrent/CancellationException;

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final c(ILandroid/view/Surface;)V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lsc;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "#setSurface"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to set "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " to "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lsc;->b(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ": The surface was not valid."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    :goto_0
    iget-object v0, p0, Lvt;->d:Lwo;

    iget-object v1, v0, Lwo;->c:Ljava/lang/Object;

    monitor-enter v1

    if-eqz p2, :cond_2

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Configured "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lsc;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " to use "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removed surface for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lsc;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_1
    const/4 v2, 0x0

    if-nez p2, :cond_4

    iget-object p2, v0, Lwo;->d:Ljava/util/Map;

    invoke-static {p1}, Lsc;->a(I)Lsc;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/Surface;

    if-eqz p1, :cond_3

    iget-object p2, v0, Lwo;->e:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Ljava/lang/AutoCloseable;

    goto :goto_2

    :cond_3
    goto :goto_2

    :cond_4
    iget-object v3, v0, Lwo;->d:Ljava/util/Map;

    invoke-static {p1}, Lsc;->a(I)Lsc;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/Surface;

    invoke-static {p1}, Lsc;->a(I)Lsc;

    move-result-object p1

    iget-object v4, v0, Lwo;->d:Ljava/util/Map;

    invoke-interface {v4, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v3, p2}, Lone;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, v0, Lwo;->e:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, v0, Lwo;->e:Ljava/util/Map;

    invoke-interface {p1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Ljava/lang/AutoCloseable;

    iget-object p1, v0, Lwo;->f:Lva;

    invoke-virtual {p1, p2}, Lva;->b(Landroid/view/Surface;)Ljava/lang/AutoCloseable;

    move-result-object p1

    iget-object v3, v0, Lwo;->e:Ljava/util/Map;

    invoke-interface {v3, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Surface ("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ") is already in use!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_6
    :goto_2
    monitor-exit v1

    iget-object p1, v0, Lwo;->c:Ljava/lang/Object;

    monitor-enter p1

    :try_start_1
    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object v1, v0, Lwo;->a:Lwm;

    iget-object v1, v1, Lwm;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lwk;

    iget-object v3, v3, Lwk;->e:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lrj;

    iget-object v5, v0, Lwo;->d:Ljava/util/Map;

    iget v6, v4, Lrj;->a:I

    invoke-static {v6}, Lsc;->a(I)Lsc;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/Surface;

    if-nez v5, :cond_8

    sget-object p2, Lojy;->a:Lojy;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p1

    goto :goto_4

    :cond_8
    :try_start_2
    iget v4, v4, Lrj;->a:I

    invoke-static {v4}, Lsc;->a(I)Lsc;

    move-result-object v4

    invoke-interface {p2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :cond_9
    monitor-exit p1

    :goto_4
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_a

    iget-object p1, v0, Lwo;->b:Lqx;

    invoke-interface {p1, p2}, Lqx;->c(Ljava/util/Map;)V

    :cond_a
    if-eqz v2, :cond_b

    invoke-interface {v2}, Ljava/lang/AutoCloseable;->close()V

    :cond_b
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1

    throw p2

    :catchall_1
    move-exception p1

    monitor-exit v1

    goto :goto_6

    :goto_5
    throw p1

    :goto_6
    goto :goto_5
.end method

.method public final close()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "#close"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Closing "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lvt;->g:Lvo;

    invoke-virtual {v0}, Lvo;->close()V

    iget-object v0, p0, Lvt;->a:Lvz;

    invoke-interface {v0}, Lvz;->b()V

    iget-object v0, p0, Lvt;->e:Lqx;

    invoke-interface {v0}, Lqx;->a()V

    iget-object v0, p0, Lvt;->d:Lwo;

    invoke-virtual {v0}, Lwo;->a()V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public final d()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "#start"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Starting "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lvt;->b:Lvy;

    invoke-interface {v0}, Lvy;->a()V

    iget-object v0, p0, Lvt;->e:Lqx;

    invoke-interface {v0}, Lqx;->b()V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CameraGraph-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lvt;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
