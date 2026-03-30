.class public final Lgvg;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v0, Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object v0, p0, Lgvg;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lgvg;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    iput-object p1, p0, Lgvg;->a:Ljava/lang/Object;

    nop

    nop

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

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public constructor <init>(Lkog;[C)V
    .locals 0

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_0
    const/4 p2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    invoke-direct {p0, p2, p2}, Lpck;-><init>(II)V

    goto/32 :goto_7

    nop

    nop

    :goto_2
    iput-object p1, p0, Lgvg;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_3
    invoke-static {p0}, Lrrf;->x(Z)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    :goto_5
    invoke-virtual {p1}, Lpoh;->t()Ljava/util/List;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_6
    new-instance p0, Lpck;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_7
    invoke-interface {p1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Lnne;)V
    .locals 2

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    sget-object v0, Lnne;->h:Lnne;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto :goto_f

    nop

    nop

    :goto_6
    goto/32 :goto_e

    nop

    nop

    :goto_7
    iput-object p1, p0, Lgvg;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_a
    sget-object p1, Lsbh;->a:Lryb;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_c
    sget p1, Lryb;->d:I

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_d
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_e
    const/4 p1, 0x1

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-nez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    sget-object v0, Lnyk;->j:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const v1, 0x10

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_14
    invoke-static {v1}, Lryb;->l(Ljava/lang/Object;)Lryb;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-eq p1, v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const/4 p1, 0x0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_17
    return-void

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iput-object p1, p0, Lgvg;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1a
    const v0, 0x1d

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_1b
    invoke-direct {v1, v0, p1}, Lpha;-><init>(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto/32 :goto_14

    nop

    nop

    :goto_1c
    new-instance v1, Lpha;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_1d
    sget-object v0, Lnyk;->j:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_3

    nop

    nop

    nop
.end method

.method public constructor <init>(Lpct;)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    const-string v0, "TuningDataLogger"

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    :goto_3
    invoke-interface {p1, v0}, Lpct;->a(Ljava/lang/String;)Lpcu;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, Lgvg;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Lpnu;)V
    .locals 4

    goto/32 :goto_18

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_1
    invoke-interface {v1, v2}, Lj$/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_2
    iput-object v0, p0, Lgvg;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {}, Lgwo;->values()[Lgwo;

    move-result-object v1

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {v2, p0, p1, v3}, Lgbt;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    sget-object p0, Lgwo;->d:Lgwo;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_a
    const v1, 0x3

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_15

    nop

    :goto_c
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_16

    nop

    nop

    :goto_e
    const-class v1, Lgwo;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_10
    const/high16 p1, 0x40000000    # 2.0f

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_12
    new-instance v0, Ljava/util/EnumMap;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_13
    new-instance v2, Lgbt;

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_14
    const/4 v3, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_15
    goto/32 :goto_4

    nop

    nop

    :goto_16
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-static {v1}, Lj$/util/DesugarArrays;->stream([Ljava/lang/Object;)Lj$/util/stream/Stream;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_18
    const v0, 0x1c

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Lpqk;)V
    .locals 4

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_11

    nop

    :goto_1
    const v0, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p1, v1, v0}, Lpqk;->c(Ljava/lang/String;[Lpqb;)Ltlk;

    move-result-object p1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    aput-object v2, v0, v1

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

    :goto_8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_a
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0x1c

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

    :goto_c
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const-string v1, "/gca/onecamera/frame_availability"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_e
    invoke-direct {v2, v3, v1}, Lpqb;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_f
    new-instance v2, Lpqb;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_10
    new-array v0, v0, [Lpqb;

    nop

    nop

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

    :goto_11
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iput-object p1, p0, Lgvg;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_14
    const-string v3, "framestream_id"

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const-class v1, Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>([B)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p1, 0x2

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2
    new-array p1, p1, [I

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lgvg;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>([B[B)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p1}, Lhfi;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_4

    nop

    nop

    :goto_2
    iput-object p1, p0, Lgvg;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    return-void

    nop

    :goto_4
    new-instance p1, Lhfi;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public constructor <init>([C)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    invoke-direct {p1, v0}, Landroid/util/LruCache;-><init>(I)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    :goto_3
    new-instance p1, Landroid/util/LruCache;

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_4
    iput-object p1, p0, Lgvg;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/16 v0, 0x14

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

.method public static final o()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sget-object v0, Lhmq;->a:Ljava/lang/Float;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop
.end method

.method public static final r(Lheo;)Lsnk;
    .locals 16

    goto/32 :goto_7e

    nop

    nop

    :goto_0
    if-ne v4, v3, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v1}, Ltkb;->i()Ltkg;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_2
    goto/16 :goto_26

    nop

    nop

    nop

    nop

    :sswitch_0
    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput v2, v5, Lsnk;->b:I

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_4
    goto/16 :goto_4b

    nop

    nop

    :pswitch_0
    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_5
    const/4 v12, 0x5

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v1}, Ltkb;->o()V

    :goto_7
    goto/32 :goto_41

    nop

    nop

    :goto_8
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    move v2, v9

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_a
    const/4 v10, 0x7

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iput v6, v4, Lsnk;->d:I

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    :goto_c
    const/16 v6, 0xb

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_d
    goto/16 :goto_26

    nop

    nop

    nop

    nop

    nop

    :sswitch_1
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v1}, Ltkb;->o()V

    :goto_f
    goto/32 :goto_47

    nop

    nop

    nop

    :goto_10
    iput v14, v0, Lsnk;->c:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    :goto_11
    if-ne v2, v15, :cond_1

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :cond_1
    sparse-switch v2, :sswitch_data_0

    goto/32 :goto_77

    nop

    nop

    nop

    :goto_12
    iput v5, v4, Lsnk;->b:I

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    move v2, v8

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_14
    goto/16 :goto_4b

    nop

    nop

    nop

    nop

    :pswitch_1
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v4}, Ltkg;->C()Z

    move-result v2

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_16
    iput v2, v0, Lsnk;->b:I

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v1}, Ltkg;->m()Ltkb;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/16 :goto_26

    nop

    nop

    nop

    nop

    :sswitch_2
    goto/32 :goto_7c

    nop

    nop

    nop

    :goto_19
    move v6, v14

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_1a
    goto :goto_26

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_28

    nop

    nop

    nop

    :goto_1c
    const/16 v2, 0xe

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    :goto_1d
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_39

    nop

    :cond_2
    goto/32 :goto_38

    nop

    :goto_1e
    const/16 v2, 0xd

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_1f
    move v2, v11

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    :goto_20
    goto :goto_26

    nop

    :sswitch_3
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_21
    goto :goto_26

    nop

    nop

    nop

    nop

    nop

    :sswitch_4
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    goto/16 :goto_4b

    nop

    nop

    :pswitch_2
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_23
    const/16 v8, 0x9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    check-cast v0, Lsnk;

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    move v2, v15

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_27
    goto :goto_26

    nop

    :sswitch_5
    goto/32 :goto_70

    nop

    nop

    nop

    :goto_28
    move v2, v14

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    :goto_29
    iget v0, v0, Lheo;->l:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    const/16 v2, 0x10

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    :goto_2b
    check-cast v5, Lsnk;

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    move v6, v13

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_2d
    iget-object v4, v1, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    check-cast v0, Lsnk;

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {v4}, Ltkg;->C()Z

    move-result v4

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    move v6, v3

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_31
    goto/16 :goto_4b

    nop

    nop

    :pswitch_3
    goto/32 :goto_85

    nop

    nop

    :goto_32
    if-eqz v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_6

    nop

    nop

    :goto_33
    move v6, v10

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_34
    const/4 v11, 0x6

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_35
    or-int/2addr v5, v15

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    move v2, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_37
    move v6, v9

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_39
    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_3a
    move v14, v15

    nop

    :goto_3b
    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    goto/16 :goto_26

    nop

    nop

    nop

    nop

    :sswitch_6
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    goto/16 :goto_26

    nop

    nop

    :sswitch_7
    goto/32 :goto_36

    nop

    nop

    nop

    :goto_3e
    add-int/lit8 v2, v2, -0x1

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    move v2, v10

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    :goto_40
    const/16 v7, 0xa

    nop

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

    nop

    :goto_41
    iget-object v0, v1, Ltkb;->b:Ltkg;

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

    :goto_42
    move v6, v12

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    :goto_43
    const v1, 0x5

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    goto :goto_3b

    nop

    :goto_45
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_46
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    :goto_47
    iget-object v4, v1, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    :goto_48
    return-object v0

    nop

    :goto_49
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    move v6, v15

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    :pswitch_4
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    if-eqz v2, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_74

    nop

    nop

    nop

    :goto_4d
    move v6, v8

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    add-int/lit8 v6, v6, -0x1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_4f
    goto :goto_4b

    nop

    nop

    :pswitch_5
    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    iget v2, v0, Lheo;->f:I

    nop

    nop

    nop

    nop

    packed-switch v2, :pswitch_data_0

    goto/32 :goto_30

    nop

    nop

    :goto_51
    move v6, v7

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_52
    goto :goto_4b

    nop

    nop

    nop

    nop

    nop

    :pswitch_6
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_53
    goto :goto_4b

    nop

    nop

    nop

    :pswitch_7
    goto/32 :goto_66

    nop

    nop

    nop

    :goto_54
    or-int/2addr v2, v13

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_55
    if-eqz v4, :cond_5

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_56
    goto/16 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :pswitch_8
    goto/32 :goto_33

    nop

    nop

    :goto_57
    iget v5, v4, Lsnk;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_58
    move-object/from16 v0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :goto_59
    invoke-virtual {v2}, Ltkg;->C()Z

    move-result v0

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    add-int/lit8 v14, v14, -0x1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_5b
    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_5
        0x8 -> :sswitch_a
        0x10 -> :sswitch_9
        0x20 -> :sswitch_1
        0x40 -> :sswitch_4
        0x80 -> :sswitch_3
        0x100 -> :sswitch_0
        0x200 -> :sswitch_7
        0x400 -> :sswitch_2
        0x800 -> :sswitch_8
        0x1000 -> :sswitch_b
        0x8000 -> :sswitch_6
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_2
        :pswitch_b
        :pswitch_1
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_c
        :pswitch_a
        :pswitch_7
    .end packed-switch

    :goto_5c
    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    const/4 v3, 0x1

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    goto/16 :goto_4b

    nop

    nop

    nop

    nop

    :pswitch_9
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    const/4 v14, 0x3

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    :goto_60
    const/4 v15, 0x2

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_61
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_62
    goto/16 :goto_4b

    nop

    nop

    nop

    :pswitch_a
    goto/32 :goto_71

    nop

    nop

    :goto_63
    sget-object v1, Lsnk;->a:Lsnk;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_64
    move v2, v7

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_65
    goto/16 :goto_4b

    nop

    :pswitch_b
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_66
    const/16 v6, 0xe

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    :goto_67
    goto/16 :goto_26

    nop

    nop

    nop

    nop

    nop

    :sswitch_8
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_68
    check-cast v4, Lsnk;

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_69
    iget v2, v5, Lsnk;->b:I

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_6a
    if-ne v2, v3, :cond_6

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_6b
    goto/16 :goto_26

    nop

    nop

    nop

    nop

    :goto_6c
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_6d
    goto/16 :goto_26

    nop

    nop

    nop

    nop

    nop

    :sswitch_9
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_6e
    goto/16 :goto_26

    nop

    nop

    nop

    nop

    nop

    :sswitch_a
    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    if-ne v4, v15, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_70
    move v2, v13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_71
    const/16 v6, 0xd

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    :goto_72
    goto/16 :goto_26

    nop

    :sswitch_b
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_73
    goto/16 :goto_4b

    nop

    :pswitch_c
    goto/32 :goto_81

    nop

    nop

    nop

    :goto_74
    invoke-virtual {v1}, Ltkb;->o()V

    :goto_75
    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    :goto_76
    if-nez v0, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_77
    move v2, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_78
    iput v2, v5, Lsnk;->e:I

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_79
    iget v2, v0, Lheo;->g:I

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_7a
    move v14, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_7b
    iget-object v2, v1, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    const/16 v2, 0xc

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    const/16 v9, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    const v0, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_7f
    move v2, v12

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_80
    const/4 v13, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_81
    const/16 v6, 0xc

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_82
    iget v2, v0, Lsnk;->b:I

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_83
    add-int/lit8 v4, v0, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    :goto_84
    move-object v5, v4

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_85
    move v6, v11

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

    :goto_86
    or-int/2addr v2, v3

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_87
    move-object v4, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    :goto_88
    goto/32 :goto_39

    nop

    nop

    nop
.end method

.method public static final t(Ljava/util/Collection;)Lsui;
    .locals 2

    goto/32 :goto_9

    nop

    nop

    :goto_0
    invoke-direct {v0, v1}, Lfxq;-><init>(I)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v1, 0x7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    invoke-static {p0, v0, v1}, Lsso;->i(Lsui;Lrsk;Ljava/util/concurrent/Executor;)Lsui;

    move-result-object p0

    nop

    nop

    goto/32 :goto_b

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
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_5
    sget-object v1, Lstd;->a:Lstd;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_7
    new-instance v0, Lfxq;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_4

    nop

    :goto_9
    const v0, 0xd

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0x8

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_b
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_f
    invoke-static {p0}, Lsgj;->K(Ljava/lang/Iterable;)Lsui;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()F
    .locals 1

    goto/32 :goto_7

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_2
    sget-object v0, Lgwo;->e:Lgwo;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    check-cast p0, Ljava/lang/Float;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4
    div-float/2addr v0, p0

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_5
    const/high16 v0, 0x3f800000    # 1.0f

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_7
    iget-object p0, p0, Lgvg;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final b(Lgwo;)F
    .locals 0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    return p0

    nop

    :goto_3
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4
    check-cast p0, Ljava/lang/Float;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    iget-object p0, p0, Lgvg;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_3

    nop

    nop
.end method

.method public final c()I
    .locals 1

    goto/32 :goto_3

    nop

    nop

    :goto_0
    invoke-virtual {p0, v0}, Lhoh;->a(Lhmo;)Lj$/util/Optional;

    move-result-object p0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1
    check-cast p0, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lgvg;->a:Ljava/lang/Object;

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
    sget-object v0, Lhmq;->F:Lhmo;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_6
    check-cast p0, Lhoh;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return p0

    nop

    nop

    nop

    nop
.end method

.method public final d()I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sget-object v0, Lhmq;->E:Lhmo;

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

    :goto_1
    check-cast p0, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, v0}, Lhoh;->a(Lhmo;)Lj$/util/Optional;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_4
    check-cast p0, Lhoh;

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_5
    iget-object p0, p0, Lgvg;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_6
    return p0

    nop

    :goto_7
    invoke-virtual {p0}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public final e()I
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, v0}, Lhoh;->a(Lhmo;)Lj$/util/Optional;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    check-cast p0, Ljava/lang/Integer;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_3
    sget-object v0, Lhmq;->H:Lhmo;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return p0

    nop

    nop

    :goto_5
    check-cast p0, Lhoh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_7
    iget-object p0, p0, Lgvg;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop
.end method

.method public final f()I
    .locals 1

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return p0

    nop

    :goto_2
    invoke-virtual {p0}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_3
    check-cast p0, Lhoh;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0, v0}, Lhoh;->a(Lhmo;)Lj$/util/Optional;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p0, p0, Lgvg;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_6
    sget-object v0, Lhmq;->G:Lhmo;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_7
    check-cast p0, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public final g()J
    .locals 2

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sget-object v1, Lhmq;->C:Lhmo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0x1a

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    check-cast p0, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_3
    invoke-static {v0, v1}, Lj$/time/Duration;->ofMillis(J)Lj$/time/Duration;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    int-to-long v0, p0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0x14

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    check-cast v1, Lhoh;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    check-cast p0, Lhoh;

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_9
    sget-object v0, Lhmq;->D:Lhmo;

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_a
    goto/32 :goto_11

    nop

    nop

    :goto_b
    invoke-virtual {v0}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_c
    iget-object p0, p0, Lgvg;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v1, v0}, Lhoh;->a(Lhmo;)Lj$/util/Optional;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p0}, Lj$/time/Duration;->toNanos()J

    move-result-wide v0

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_13
    check-cast v0, Ljava/lang/Integer;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :cond_0
    goto/32 :goto_10

    nop

    :goto_15
    invoke-virtual {p0}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_16
    return-wide v0

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_a

    nop

    nop

    :goto_18
    rem-int v0, v0, v1

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

    nop

    :goto_19
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p0, v1}, Lhoh;->a(Lhmo;)Lj$/util/Optional;

    move-result-object p0

    nop

    nop

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
    iget-object v1, p0, Lgvg;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, v0}, Lhoh;->e(Lhmn;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lgvg;->a:Ljava/lang/Object;

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

    :goto_3
    sget-object v0, Lhmq;->bo:Lhmn;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_0

    nop

    nop

    :goto_5
    check-cast p0, Lhoh;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public final i()Z
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    sget-object v0, Lhmq;->bm:Lhmn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    :goto_2
    invoke-virtual {p0, v0}, Lhoh;->p(Lhmn;)Z

    move-result p0

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    check-cast p0, Lhoh;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_4
    iget-object p0, p0, Lgvg;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop
.end method

.method public final j()Z
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    nop

    :goto_1
    sget-object v0, Lhmq;->a:Ljava/lang/Float;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_2
    sget-object v0, Lhmq;->bn:Lhmn;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0, v0}, Lhoh;->p(Lhmn;)Z

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_4
    if-nez p0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_5
    check-cast p0, Lhoh;

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_6
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object p0, p0, Lgvg;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_8
    const/4 p0, 0x1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_9
    return p0

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_6

    nop

    nop
.end method

.method public final k(Lgst;)Lows;
    .locals 1

    goto/32 :goto_a

    nop

    nop

    :goto_0
    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lgvg;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    new-instance v0, Lows;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-object v0

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {v0}, Lows;-><init>()V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_3

    nop

    nop

    :goto_8
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_9
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_a
    iget-object v0, p0, Lgvg;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_b
    iget-object p0, p0, Lgvg;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_c
    check-cast p0, Lows;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop
.end method

.method public final l(Lgst;)V
    .locals 0

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lows;->close()V

    :goto_2
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    if-nez p0, :cond_0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    :goto_4
    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_5
    check-cast p0, Lows;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_6
    iget-object p0, p0, Lgvg;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop
.end method

.method public final m(I)I
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    check-cast p0, [I

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    aget p0, p0, p1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return p0

    nop

    nop

    nop

    nop

    :goto_3
    add-int/lit8 p1, p1, -0x1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    iget-object p0, p0, Lgvg;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final n(I)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    aput v0, p0, p1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    check-cast p0, [I

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_2
    iget-object p0, p0, Lgvg;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    add-int/lit8 v0, v0, 0x1

    nop

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

    nop

    :goto_4
    aget v0, p0, p1

    nop

    nop

    goto/32 :goto_3

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
    add-int/lit8 p1, p1, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop
.end method

.method public final p(Landroid/content/Context;Lggk;)Z
    .locals 29

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_0
    goto/16 :goto_84

    nop

    nop

    :goto_1
    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    :goto_2
    move-object v9, v15

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_3
    goto/16 :goto_2d

    nop

    nop

    :goto_4
    :try_start_0
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V

    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    goto/32 :goto_fb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-eqz v4, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_6
    int-to-double v14, v0

    nop

    goto/32 :goto_e7

    nop

    nop

    nop

    :goto_7
    sget-object v0, Ljua;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_8
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/32 :goto_9f

    nop

    nop

    :goto_9
    sget-object v0, Ljuc;->a:Ljub;

    nop

    nop

    nop

    nop

    goto/32 :goto_b6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    div-double v23, v14, v4

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_b
    const/4 v15, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_c
    throw v0

    nop

    nop

    :goto_d
    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto :goto_4

    nop

    nop

    :catch_1
    move-exception v0

    nop

    nop

    nop

    :try_start_1
    sget-object v1, Ljtv;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Lscs;->b()Lsdo;

    move-result-object v1

    nop

    nop

    invoke-interface {v1, v0}, Lscz;->i(Ljava/lang/Throwable;)Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    check-cast v0, Lscz;

    nop

    nop

    nop

    nop

    nop

    const/16 v1, 0xa39

    nop

    nop

    invoke-interface {v0, v1}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    check-cast v0, Lscz;

    nop

    const-string v1, "VideoRotationMetadataLoader.loadRotationMetadata() failed!"

    nop

    nop

    nop

    nop

    invoke-interface {v0, v1}, Lscz;->s(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_a

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_f
    new-instance v15, Ljua;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_fd

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    :goto_11
    if-gtz v3, :cond_1

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_d8

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-eqz v2, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    :cond_2
    goto/32 :goto_6

    nop

    nop

    :goto_13
    sget-object v0, Ljua;->a:Lsdb;

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_14
    move v12, v11

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_42

    nop

    nop

    :goto_16
    check-cast v0, Lscz;

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    :goto_17
    move-object/from16 v1, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_b3

    nop

    nop

    :goto_18
    invoke-interface/range {p2 .. p2}, Lggk;->c()Lggm;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_bd

    nop

    nop

    nop

    :goto_19
    goto/16 :goto_a9

    nop

    :goto_1a
    :try_start_3
    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    nop

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v10

    nop

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/32 :goto_102

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const/16 v9, 0xa40

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    move/from16 v18, v3

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    move/from16 v19, v11

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    :goto_1e
    move v2, v7

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    :goto_1f
    invoke-direct {v0, v15}, Ljub;-><init>(Ljua;)V

    :goto_20
    goto/32 :goto_df

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_ff

    nop

    :goto_22
    const v1, 0x10

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_23
    const-string v2, "UsePanoramaViewer"

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    :goto_24
    move v2, v8

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {v6, v1}, Ljtq;->c(Z)V

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_26
    if-eqz v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_27
    move v3, v0

    nop

    :goto_28
    goto/32 :goto_75

    nop

    nop

    nop

    :goto_29
    if-lez v0, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ff

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_fe

    nop

    :goto_2a
    if-eqz v4, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    :cond_5
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_2b
    goto/16 :goto_f8

    nop

    nop

    nop

    nop

    :goto_2c
    :try_start_4
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V

    :goto_2d
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_a

    goto/32 :goto_b5

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {v6, v1}, Ljtq;->b(Z)V

    goto/32 :goto_ed

    nop

    nop

    nop

    :goto_2f
    if-eqz v2, :cond_6

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_d5

    nop

    nop

    nop

    :goto_30
    const v0, 0xa

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

    :goto_31
    goto/16 :goto_b1

    nop

    nop

    nop

    nop

    nop

    :catch_2
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    if-eq v0, v1, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_fa

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_e4

    nop

    nop

    :goto_33
    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    :goto_34
    if-eqz v0, :cond_8

    nop

    nop

    nop

    goto/32 :goto_e9

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_e8

    nop

    nop

    nop

    nop

    :goto_35
    invoke-interface/range {p2 .. p2}, Lggk;->b()Lggl;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    nop

    :goto_36
    move v13, v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    sget-object v0, Ljua;->a:Lsdb;

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    :goto_38
    invoke-static {v9}, Lkav;->h(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_39
    iget-boolean v1, v0, Ljub;->b:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c1

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-static {v0}, Lpuf;->o(Ljava/io/InputStream;)Lexq;

    move-result-object v10

    nop

    nop

    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7

    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    :goto_3b
    goto/16 :goto_9a

    nop

    nop

    nop

    nop

    :goto_3c
    goto/32 :goto_91

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    iget v1, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_3e
    if-gtz v12, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_dc

    nop

    nop

    nop

    :goto_3f
    sget-object v0, Ljua;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    :goto_40
    const/4 v8, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    :goto_41
    if-nez v4, :cond_a

    nop

    nop

    goto/32 :goto_2c

    nop

    :cond_a
    goto/32 :goto_c0

    nop

    nop

    :goto_42
    move v13, v12

    nop

    nop

    :catch_3
    :goto_43
    goto/32 :goto_c9

    nop

    nop

    nop

    nop

    nop

    :goto_44
    return v8

    nop

    :goto_45
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_46
    move-object v5, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_47
    if-eqz v9, :cond_b

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :cond_b
    :goto_48
    goto/32 :goto_2

    nop

    nop

    :goto_49
    invoke-interface {v0, v1}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_9d

    nop

    nop

    nop

    :goto_4a
    if-nez v2, :cond_c

    nop

    nop

    goto/32 :goto_ec

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_dd

    nop

    nop

    :goto_4b
    move v13, v12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    :goto_4c
    const-wide v27, 0x3f50624dd2f1a9fcL    # 0.001

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_4d
    invoke-interface/range {p2 .. p2}, Lggk;->b()Lggl;

    move-result-object v1

    nop

    goto/32 :goto_cb

    nop

    nop

    :goto_4e
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    :goto_4f
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    :goto_50
    move v3, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_bc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_51
    move/from16 v21, v13

    nop

    goto/32 :goto_99

    nop

    nop

    :goto_52
    invoke-static {v9}, Lkav;->h(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_53
    const/4 v7, 0x1

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_54
    invoke-static/range {v23 .. v28}, Ljua;->c(DDD)Z

    move-result v4

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_55
    invoke-interface {v0, v1}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_56
    check-cast v0, Lscz;

    nop

    nop

    goto/32 :goto_da

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    goto/16 :goto_db

    nop

    nop

    nop

    :catch_4
    move-exception v0

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_58
    invoke-virtual {v0}, Lscs;->b()Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    :goto_59
    const/16 v1, 0xa41

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    const-string v1, "IsPhotosphere"

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    invoke-direct {v15, v0, v1}, Ljua;-><init>(II)V

    goto/32 :goto_eb

    nop

    nop

    :goto_5c
    invoke-virtual {v10}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    sget-object v0, Ljua;->a:Lsdb;

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    :goto_5e
    const/4 v8, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    :goto_5f
    add-int v4, v1, v1

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_60
    goto/16 :goto_9a

    nop

    nop

    nop

    :goto_61
    goto/32 :goto_7f

    nop

    nop

    :goto_62
    invoke-interface {v0, v9}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_63
    check-cast v0, Lscz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_be

    nop

    nop

    nop

    :goto_64
    goto/16 :goto_e1

    nop

    nop

    :goto_65
    goto/32 :goto_e0

    nop

    nop

    :goto_66
    const-wide/high16 v25, 0x4000000000000000L    # 2.0

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    :goto_67
    invoke-virtual {v10}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    :goto_68
    goto/32 :goto_a8

    nop

    nop

    nop

    :goto_69
    invoke-interface {v0, v1}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    invoke-direct {v2}, Landroid/media/MediaMetadataRetriever;-><init>()V

    :try_start_6
    check-cast v0, Ljtv;

    nop

    iget-object v0, v0, Ljtv;->b:Landroid/content/Context;

    nop

    nop

    invoke-virtual {v2, v0, v1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    const/16 v0, 0x18

    nop

    invoke-virtual {v2, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    nop

    const/16 v3, 0x12

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v3

    nop

    nop

    const/16 v4, 0x13

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2, v4}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v4

    nop

    nop

    nop

    nop

    const/16 v5, 0x19

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2, v5}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v5

    nop

    nop

    if-eqz v3, :cond_d

    nop

    nop

    nop

    nop

    if-eqz v4, :cond_d

    nop

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    nop

    nop

    nop

    nop

    invoke-virtual {v6, v7}, Ljtq;->i(I)V

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    nop

    nop

    nop

    invoke-virtual {v6, v7}, Ljtq;->h(I)V

    goto :goto_6b

    nop

    nop

    nop

    nop

    :cond_d
    sget-object v7, Ljtv;->a:Lsdb;

    nop

    invoke-virtual {v7}, Lscs;->c()Lsdo;

    move-result-object v7

    nop

    nop

    const/16 v8, 0xa36

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v7, v8}, Lscz;->M(I)Lsdo;

    move-result-object v7

    nop

    nop

    nop

    nop

    nop

    check-cast v7, Lscz;

    nop

    nop

    nop

    const-string v8, "Size metadata does not exist for the video at %s"

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v7, v8, v1}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_6b
    if-eqz v0, :cond_e

    nop

    nop

    iput-object v0, v6, Ljtq;->b:Ljava/lang/String;

    nop

    nop

    nop

    goto :goto_6c

    nop

    nop

    nop

    :cond_e
    sget-object v7, Ljtv;->a:Lsdb;

    nop

    nop

    nop

    nop

    invoke-virtual {v7}, Lscs;->c()Lsdo;

    move-result-object v7

    nop

    nop

    nop

    const/16 v8, 0xa37

    nop

    nop

    invoke-interface {v7, v8}, Lscz;->M(I)Lsdo;

    move-result-object v7

    nop

    nop

    check-cast v7, Lscz;

    nop

    nop

    nop

    const/4 v8, 0x0

    nop

    nop

    sget-object v8, Lcom/google/vr/ndk/base/qbMr/qVSTXuYNqkCvm;->zDYhuprH:Ljava/lang/String;

    nop

    nop

    nop

    invoke-interface {v7, v8, v1}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_6c
    if-eqz v5, :cond_f

    nop

    nop

    nop

    nop

    nop

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    nop

    nop

    nop

    nop

    double-to-int v1, v7

    nop

    nop

    nop

    nop

    invoke-virtual {v6, v1}, Ljtq;->g(I)V

    goto :goto_6d

    nop

    nop

    nop

    nop

    :cond_f
    sget-object v5, Ljtv;->a:Lsdb;

    nop

    nop

    nop

    invoke-virtual {v5}, Lscs;->c()Lsdo;

    move-result-object v5

    nop

    nop

    const/16 v7, 0xa38

    nop

    nop

    nop

    nop

    invoke-interface {v5, v7}, Lscz;->M(I)Lsdo;

    move-result-object v5

    nop

    nop

    nop

    check-cast v5, Lscz;

    nop

    nop

    nop

    const-string v7, "Framerate metadata does not exist for the video at %s"

    nop

    nop

    nop

    invoke-interface {v5, v7, v1}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_6d
    goto/32 :goto_100

    nop

    nop

    nop

    :goto_6e
    int-to-double v9, v3

    nop

    goto/32 :goto_b8

    nop

    nop

    nop

    :goto_6f
    const/16 v1, 0xa3d

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    :goto_70
    move v2, v8

    nop

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_71
    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_72
    goto/16 :goto_28

    nop

    nop

    nop

    nop

    :catch_5
    goto/32 :goto_d4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_73
    if-nez v10, :cond_10

    nop

    goto/32 :goto_d7

    nop

    nop

    nop

    :cond_10
    :try_start_7
    const-string v0, "FirstPhotoDate"

    nop

    nop

    nop

    invoke-static {v10, v0}, Ljua;->d(Lexq;Ljava/lang/String;)V

    const-string v0, "LastPhotoDate"

    nop

    nop

    nop

    nop

    invoke-static {v10, v0}, Ljua;->d(Lexq;Ljava/lang/String;)V

    const-string v0, "SourcePhotosCount"

    nop

    invoke-static {v10, v0}, Ljua;->a(Lexq;Ljava/lang/String;)I

    invoke-interface {v10, v5, v3}, Lexq;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_11

    nop

    nop

    nop

    move-object v0, v10

    nop

    nop

    nop

    nop

    check-cast v0, Leye;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v5, v3, v8}, Leye;->o(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    check-cast v0, Ljava/lang/String;

    nop

    nop

    :cond_11
    invoke-static {v10, v2}, Ljua;->b(Lexq;Ljava/lang/String;)Z

    move-result v0

    nop

    nop

    nop

    nop
    :try_end_7
    .catch Lexp; {:try_start_7 .. :try_end_7} :catch_5

    :try_start_8
    const-string v3, "CroppedAreaImageWidthPixels"

    nop

    nop

    nop

    nop

    invoke-static {v10, v3}, Ljua;->a(Lexq;Ljava/lang/String;)I

    move-result v3

    nop

    nop

    nop

    nop
    :try_end_8
    .catch Lexp; {:try_start_8 .. :try_end_8} :catch_b

    :try_start_9
    const-string v11, "CroppedAreaImageHeightPixels"

    nop

    nop

    nop

    nop

    nop

    invoke-static {v10, v11}, Ljua;->a(Lexq;Ljava/lang/String;)I

    move-result v11

    nop

    nop

    nop
    :try_end_9
    .catch Lexp; {:try_start_9 .. :try_end_9} :catch_6

    :try_start_a
    const-string v12, "FullPanoWidthPixels"

    nop

    nop

    nop

    invoke-static {v10, v12}, Ljua;->a(Lexq;Ljava/lang/String;)I

    move-result v12

    nop

    nop
    :try_end_a
    .catch Lexp; {:try_start_a .. :try_end_a} :catch_8

    :try_start_b
    const-string v13, "FullPanoHeightPixels"

    nop

    nop

    invoke-static {v10, v13}, Ljua;->a(Lexq;Ljava/lang/String;)I

    move-result v13

    nop

    nop

    nop

    nop
    :try_end_b
    .catch Lexp; {:try_start_b .. :try_end_b} :catch_2

    :try_start_c
    const-string v14, "CroppedAreaLeftPixels"

    nop

    nop

    nop

    invoke-static {v10, v14}, Ljua;->a(Lexq;Ljava/lang/String;)I

    const-string v14, "CroppedAreaTopPixels"

    nop

    nop

    invoke-static {v10, v14}, Ljua;->a(Lexq;Ljava/lang/String;)I

    const-string v14, "LargestValidInteriorRectLeft"

    nop

    nop

    nop

    invoke-static {v10, v14}, Ljua;->a(Lexq;Ljava/lang/String;)I

    const-string v14, "LargestValidInteriorRectTop"

    nop

    invoke-static {v10, v14}, Ljua;->a(Lexq;Ljava/lang/String;)I

    const-string v14, "LargestValidInteriorRectWidth"

    nop

    nop

    invoke-static {v10, v14}, Ljua;->a(Lexq;Ljava/lang/String;)I

    const-string v14, "LargestValidInteriorRectHeight"

    nop

    nop

    nop

    nop

    invoke-static {v10, v14}, Ljua;->a(Lexq;Ljava/lang/String;)I

    invoke-interface {v10, v5, v1}, Lexq;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    nop

    nop

    nop

    nop

    nop

    if-eqz v5, :cond_12

    nop

    nop

    nop

    nop

    nop

    invoke-static {v10, v1}, Ljua;->b(Lexq;Ljava/lang/String;)Z

    move-result v1

    nop

    nop

    nop

    nop

    goto :goto_74

    nop

    nop

    nop

    nop

    :cond_12
    invoke-static {v10, v2}, Ljua;->b(Lexq;Ljava/lang/String;)Z

    move-result v1

    nop

    nop

    nop
    :try_end_c
    .catch Lexp; {:try_start_c .. :try_end_c} :catch_3

    :goto_74
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_75
    move v11, v3

    nop

    nop

    nop

    nop

    nop

    :goto_76
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_77
    move/from16 v17, v0

    nop

    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_78
    invoke-interface {v0, v12}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    :goto_79
    move-object/from16 v0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    iput-boolean v7, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    invoke-static/range {v23 .. v28}, Ljua;->c(DDD)Z

    move-result v4

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_7c
    const-string v1, "Pano metadata invalid: Full pano dimension not 2:1."

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    nop

    nop

    nop

    nop

    goto/32 :goto_d9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    iget-object v0, v0, Lgvg;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_7f
    if-eqz v2, :cond_13

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    :cond_13
    goto/32 :goto_d3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_80
    invoke-interface {v0}, Lggl;->c()Landroid/net/Uri;

    goto/32 :goto_f9

    nop

    nop

    nop

    nop

    :goto_81
    move/from16 v20, v12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    :goto_82
    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

    nop

    goto/32 :goto_c3

    nop

    nop

    :goto_83
    move v2, v8

    nop

    :goto_84
    goto/32 :goto_bb

    nop

    nop

    nop

    :goto_85
    check-cast v0, Lscz;

    nop

    nop

    nop

    goto/32 :goto_cf

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_86
    invoke-interface {v0}, Lggl;->c()Landroid/net/Uri;

    move-result-object v10

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_87
    if-nez v0, :cond_14

    nop

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    :cond_14
    goto/32 :goto_35

    nop

    nop

    nop

    :goto_88
    const/4 v8, 0x0

    nop

    nop

    :goto_89
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8a
    goto/16 :goto_89

    nop

    nop

    nop

    nop

    :goto_8b
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8c
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_8d
    if-eqz v15, :cond_15

    nop

    goto/32 :goto_f1

    nop

    :cond_15
    goto/32 :goto_b4

    nop

    nop

    nop

    :goto_8e
    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    :goto_8f
    const-string v11, "content"

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_90
    const-string v3, "ProjectionType"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    :goto_91
    invoke-static {v0, v15, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    :try_start_d
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_92
    const/16 v12, 0xa42

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    :goto_93
    invoke-virtual {v0}, Lscs;->b()Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_94
    new-instance v2, Landroid/media/MediaMetadataRetriever;

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    :goto_95
    const/4 v15, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    nop

    :goto_96
    if-nez v0, :cond_16

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :cond_16
    goto/32 :goto_ef

    nop

    nop

    :goto_97
    move/from16 v17, v13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    nop

    :goto_98
    invoke-interface {v0, v1}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_99
    invoke-direct/range {v16 .. v22}, Ljua;-><init>(ZIIIIZ)V

    :goto_9a
    goto/32 :goto_8d

    nop

    nop

    nop

    :goto_9b
    iget-boolean v1, v0, Ljub;->a:Z

    nop

    nop

    goto/32 :goto_de

    nop

    nop

    nop

    :goto_9c
    goto/16 :goto_15

    nop

    nop

    nop

    nop

    nop

    :catch_6
    goto/32 :goto_cc

    nop

    nop

    nop

    :goto_9d
    goto :goto_a6

    nop

    nop

    :goto_9e
    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_9f
    goto/16 :goto_48

    nop

    nop

    :goto_a0
    :try_start_e
    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    nop
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    goto/32 :goto_ae

    nop

    nop

    nop

    :goto_a1
    check-cast v0, Lscz;

    nop

    goto/32 :goto_f6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a2
    const/4 v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    :goto_a3
    move v12, v8

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    :goto_a4
    const-string v4, "Failed to close stream: %s"

    nop

    nop

    nop

    nop

    goto/32 :goto_f2

    nop

    nop

    nop

    :goto_a5
    invoke-interface {v0, v1}, Lscz;->s(Ljava/lang/String;)V

    :goto_a6
    goto/32 :goto_b

    nop

    nop

    :goto_a7
    sget-object v7, Lggm;->b:Lggm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ee

    nop

    nop

    nop

    :goto_a8
    move-object v9, v0

    nop

    nop

    nop

    nop

    :goto_a9
    goto/32 :goto_d1

    nop

    nop

    nop

    :goto_aa
    int-to-double v7, v13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_cd

    nop

    nop

    nop

    nop

    nop

    :goto_ab
    const-wide v27, 0x3fb999999999999aL    # 0.1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    :goto_ac
    move/from16 v22, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_d6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ad
    goto/16 :goto_bf

    nop

    nop

    nop

    nop

    :catch_7
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e2

    nop

    nop

    nop

    :goto_ae
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/32 :goto_e5

    nop

    nop

    :goto_af
    invoke-static {}, Ljtr;->a()Ljtq;

    move-result-object v6

    nop

    nop

    nop

    goto/32 :goto_c5

    nop

    nop

    nop

    nop

    nop

    :goto_b0
    move/from16 v22, v17

    nop

    nop

    nop

    :goto_b1
    goto/32 :goto_7d

    nop

    nop

    :goto_b2
    move/from16 v22, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b3
    invoke-interface {v1, v0}, Lggk;->g(Ljtr;)V

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_b4
    sget-object v0, Ljuc;->a:Ljub;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f0

    nop

    nop

    nop

    nop

    :goto_b5
    goto/16 :goto_fc

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

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

    :goto_b6
    goto/16 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_b7
    goto/32 :goto_52

    nop

    nop

    nop

    :goto_b8
    int-to-double v7, v11

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_b9
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v11

    nop

    nop

    nop

    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    nop

    :goto_ba
    const/4 v13, 0x0

    nop

    nop

    goto/32 :goto_c8

    nop

    nop

    nop

    nop

    nop

    :goto_bb
    int-to-double v4, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    :goto_bc
    move v11, v3

    nop

    nop

    goto/32 :goto_ca

    nop

    nop

    nop

    :goto_bd
    sget-object v1, Lggm;->c:Lggm;

    nop

    nop

    nop

    goto/32 :goto_f5

    nop

    nop

    nop

    :goto_be
    invoke-interface {v0, v4, v11}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_bf
    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    :goto_c0
    if-nez v0, :cond_17

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :cond_17
    :try_start_f
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V

    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_9

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_c1
    invoke-virtual {v6, v1}, Ljtq;->d(Z)V

    goto/32 :goto_9b

    nop

    nop

    :goto_c2
    goto/16 :goto_43

    nop

    nop

    :catch_8
    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    :goto_c3
    const/16 v1, 0xa3e

    nop

    goto/32 :goto_f3

    nop

    nop

    nop

    nop

    :goto_c4
    new-instance v0, Ljub;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_c5
    invoke-interface/range {p2 .. p2}, Lggk;->c()Lggm;

    move-result-object v0

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    :goto_c6
    iget v0, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_c7
    const/4 v1, 0x1

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :goto_c8
    const/4 v14, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d2

    nop

    nop

    nop

    nop

    nop

    :goto_c9
    move/from16 v17, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    :goto_ca
    move v12, v11

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_cb
    invoke-interface {v1}, Lggl;->c()Landroid/net/Uri;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    :goto_cc
    move v11, v8

    nop

    nop

    goto/32 :goto_101

    nop

    nop

    :goto_cd
    div-double v23, v4, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ce
    iget-boolean v0, v0, Ljub;->c:Z

    nop

    nop

    nop

    goto/32 :goto_f7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_cf
    const-string v1, "Failed to create stream to check image size, perhaps the file was deleted while we were parsing metadata"

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_d0
    if-nez v0, :cond_18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_fc

    nop

    :cond_18
    goto/32 :goto_79

    nop

    nop

    :goto_d1
    if-eqz v9, :cond_19

    nop

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    :cond_19
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d2
    const/4 v12, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    :goto_d3
    int-to-double v4, v12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    :goto_d4
    move v0, v8

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_d5
    if-eq v4, v0, :cond_1a

    nop

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    nop

    :cond_1a
    goto/32 :goto_e3

    nop

    nop

    nop

    :goto_d6
    goto/16 :goto_b1

    nop

    nop

    :goto_d7
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_d8
    if-gtz v11, :cond_1b

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :cond_1b
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_d9
    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    goto/32 :goto_7a

    nop

    nop

    nop

    :goto_da
    invoke-interface {v0, v4, v5}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_db
    goto/32 :goto_c6

    nop

    nop

    nop

    :goto_dc
    if-gtz v13, :cond_1c

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    :cond_1c
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_dd
    new-instance v15, Ljua;

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    :goto_de
    invoke-virtual {v6, v1}, Ljtq;->f(Z)V

    goto/32 :goto_ce

    nop

    nop

    nop

    nop

    nop

    :goto_df
    sget-object v1, Ljuc;->a:Ljub;

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_e0
    move v2, v8

    nop

    nop

    nop

    nop

    :goto_e1
    goto/32 :goto_77

    nop

    nop

    :goto_e2
    move-object v11, v0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_e3
    move v2, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_e4
    invoke-interface/range {p2 .. p2}, Lggk;->b()Lggl;

    move-result-object v0

    nop

    goto/32 :goto_80

    nop

    nop

    :goto_e5
    goto/16 :goto_68

    nop

    nop

    :catchall_1
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f4

    nop

    nop

    nop

    nop

    nop

    :goto_e6
    const/4 v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_e7
    div-double v25, v9, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_e8
    goto/16 :goto_9a

    nop

    nop

    nop

    :goto_e9
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_ea
    move v3, v8

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    :goto_eb
    goto/16 :goto_9a

    nop

    nop

    nop

    nop

    :goto_ec
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_ed
    invoke-virtual {v6}, Ljtq;->a()Ljtr;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_ee
    invoke-virtual {v0, v7}, Lggm;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_ef
    const-string v0, "_data"

    nop

    goto/32 :goto_b9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f0
    goto/16 :goto_20

    nop

    nop

    nop

    nop

    :goto_f1
    goto/32 :goto_c4

    nop

    nop

    nop

    nop

    nop

    :goto_f2
    const-string v5, "http://ns.google.com/photos/1.0/panorama/"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    nop

    nop

    :goto_f3
    invoke-interface {v0, v1}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    :goto_f4
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_f5
    invoke-virtual {v0, v1}, Lggm;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_d0

    nop

    nop

    nop

    nop

    :goto_f6
    const-string v1, "Pano metadata does not match file dimensions."

    nop

    nop

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f7
    invoke-virtual {v6, v0}, Ljtq;->e(Z)V

    :catch_9
    :goto_f8
    goto/32 :goto_c7

    nop

    nop

    :goto_f9
    goto/16 :goto_fc

    nop

    nop

    nop

    :goto_fa
    goto/32 :goto_e6

    nop

    nop

    :goto_fb
    throw v0

    nop

    :catch_a
    :goto_fc
    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    :goto_fd
    move-object/from16 v16, v15

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_fe
    goto/32 :goto_45

    nop

    :goto_ff
    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_100
    if-nez v3, :cond_1d

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :cond_1d
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_101
    goto/16 :goto_76

    nop

    nop

    nop

    :catch_b
    goto/32 :goto_ea

    nop

    nop

    nop

    nop

    :goto_102
    if-eqz v10, :cond_1e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    :cond_1e
    goto/32 :goto_8

    nop

    nop
.end method

.method public final q(Lrdf;)Lrss;
    .locals 3

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2
    check-cast p0, Ljava/util/UUID;

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-eqz v0, :cond_0

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Lgvg;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {p0}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object p0

    nop

    :goto_7
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v0, p0, Lgvg;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_a

    nop

    :goto_a
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p1}, Lrdf;->c()Lrdg;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_d
    return-object p0

    nop

    nop

    :goto_e
    goto/32 :goto_15

    nop

    nop

    :goto_f
    invoke-virtual {p1}, Lrdf;->c()Lrdg;

    move-result-object v1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_10
    const v1, 0x12

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_11
    goto :goto_7

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_13
    iget-object p1, p1, Lrdg;->a:Ljava/lang/String;

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_14
    iget-object v1, v1, Lrdg;->a:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-object v1, v1, Lrdg;->a:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide p0

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_18
    check-cast v0, Landroid/util/LruCache;

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_19
    invoke-virtual {p1}, Lrdf;->c()Lrdg;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_1a
    const v0, 0x15

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v0}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    check-cast v0, Landroid/util/LruCache;

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_1d
    sget-object p0, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    if-eqz p0, :cond_2

    nop

    goto/32 :goto_12

    nop

    :cond_2
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v0, v1, v2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_21
    goto/32 :goto_24

    nop

    nop

    :goto_22
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_23
    check-cast p0, Landroid/util/LruCache;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_24
    iget-object p0, p0, Lgvg;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop
.end method

.method public final s(Lkuc;)Lkuc;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v0, Lldr;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    invoke-direct {v0, p1, p0}, Lldr;-><init>(Lkuc;Lhoh;)V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    check-cast p0, Lhoh;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lgvg;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    return-object v0

    nop

    nop

    nop

    nop
.end method

.method public final u(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)Z
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1, p2}, Lgvg;->v(Landroid/hardware/camera2/CaptureResult$Key;[Ljava/lang/Object;)Z

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public final varargs v(Landroid/hardware/camera2/CaptureResult$Key;[Ljava/lang/Object;)Z
    .locals 3
    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_0
    array-length v0, p2

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0xa

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v2, 0x0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p0, p0, Lgvg;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

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

    :goto_7
    invoke-direct {v0, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_10

    nop

    :goto_9
    return v1

    nop

    :goto_a
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-gtz v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_20

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_d
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_13

    nop

    nop

    :goto_f
    goto/32 :goto_a

    nop

    :goto_10
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_11
    new-instance v0, Ljava/util/HashSet;

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-static {v0}, La;->au(Z)V

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_13
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_14
    check-cast p2, Lpro;

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_15
    if-lez v0, :cond_1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_f

    nop

    :goto_16
    return v2

    nop

    :goto_17
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_18
    move v0, v2

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_1c
    if-eqz p2, :cond_2

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_2
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_1d
    if-nez p2, :cond_3

    nop

    nop

    goto/32 :goto_17

    nop

    :cond_3
    goto/32 :goto_6

    nop

    nop

    :goto_1e
    goto :goto_19

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_18

    nop

    nop

    :goto_20
    move v0, v1

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_21
    const v0, 0xe

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_22
    invoke-interface {p2, p1}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p2

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public final w(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/PointF;
    .locals 4

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_0
    iget v0, v0, Landroid/graphics/PointF;->y:F

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_1
    sub-float/2addr v0, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_2
    check-cast p0, Lqek;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    div-float/2addr v0, p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {v0, v1, p1}, Landroid/graphics/PointF;-><init>(FF)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_5
    new-instance p1, Landroid/graphics/PointF;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_6
    int-to-float v3, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return-object p0

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_13

    nop

    nop

    :goto_9
    int-to-float v2, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_b
    invoke-direct {p1, v1, v0}, Landroid/graphics/PointF;-><init>(FF)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_1f

    nop

    :cond_0
    goto/32 :goto_1e

    nop

    :goto_d
    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_e
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget v3, p2, Landroid/graphics/Rect;->top:I

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_10
    new-instance v0, Landroid/graphics/PointF;

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_11
    sub-float/2addr v1, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p0, p1}, Lqek;->b(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_14
    iget-object p0, p0, Lgvg;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget v2, p2, Landroid/graphics/Rect;->left:I

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_16
    rem-int v0, v0, v1

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_17
    const v0, 0x1d

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_19
    const v1, 0xf

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_1a
    int-to-float p2, p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_1b
    div-float/2addr v1, v2

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iget v1, v0, Landroid/graphics/PointF;->x:F

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_1d
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_20
    int-to-float v2, v2

    nop

    goto/32 :goto_11

    nop

    nop

    nop
.end method

.method public final x(Lkrv;)Lhdn;
    .locals 3

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    invoke-direct {v1, p1}, Lgvg;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_5
    new-instance v1, Lgvg;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_6
    new-instance v0, Lhdn;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_a

    nop

    nop

    :goto_8
    goto/32 :goto_6

    nop

    nop

    :goto_9
    return-object v0

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
    const v0, 0x16

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_c
    iget-object p0, p0, Lgvg;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_d
    const v1, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_e
    invoke-direct {v0, p0, v1, p1, v2}, Lhdn;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[S)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_0

    nop

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

    :cond_0
    goto/32 :goto_7

    nop
.end method

.method public final y()Lgvg;
    .locals 1

    goto/32 :goto_3

    nop

    nop

    :goto_0
    iget-object p0, p0, Lkrv;->b:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    invoke-direct {v0, p0}, Lgvg;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    new-instance v0, Lgvg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lgvg;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4
    check-cast p0, Lkrv;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_5
    return-object v0

    nop
.end method

.method public final z()Lgvg;
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    check-cast p0, Lkrv;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    new-instance v0, Lgvg;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_2
    iget-object p0, p0, Lgvg;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {v0, p0}, Lgvg;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_3

    nop

    nop

    :goto_5
    iget-object p0, p0, Lkrv;->c:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method
