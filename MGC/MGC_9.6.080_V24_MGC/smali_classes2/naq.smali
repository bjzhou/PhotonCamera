.class public final Lnaq;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lpsa;


# static fields
.field public static final a:Lsdb;


# instance fields
.field public final b:Ljvz;

.field public final c:Loyd;

.field public final d:Ltxm;

.field public e:Lcom/google/android/apps/camera/ui/hotshot/jni/HotshotObjectDetector;

.field public f:Lpci;

.field public g:Z

.field public h:I

.field private final i:Libn;

.field private final j:Loyn;

.field private k:J

.field private l:J

.field private final m:Lhoh;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    const-string v0, "naq"

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    return-void

    nop

    :goto_3
    sput-object v0, Lnaq;->a:Lsdb;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Libn;Ljvz;Loyn;Loyd;Ltxm;Lows;Lhoh;)V
    .locals 2

    goto/32 :goto_3

    nop

    nop

    :goto_0
    iput-wide v0, p0, Lnaq;->l:J

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v0, 0x3

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_2
    invoke-direct {p1, p0, v0}, Lnao;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0x17

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

    :goto_4
    const-wide/16 v0, 0x0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-interface {p4, p1, p0}, Loyd;->cL(Lpcm;Ljava/util/concurrent/Executor;)Lpci;

    move-result-object p0

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    :goto_7
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_8
    new-instance p1, Lnao;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iput-wide v0, p0, Lnaq;->k:J

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_a
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iput-object p1, p0, Lnaq;->i:Libn;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_e
    iput-object p3, p0, Lnaq;->j:Loyn;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_f
    iput-object p5, p0, Lnaq;->d:Ltxm;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iput-object p2, p0, Lnaq;->b:Ljvz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_12
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_13
    const v1, 0x20

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p6, p0}, Lows;->d(Lpci;)V

    goto/32 :goto_6

    nop

    nop

    :goto_15
    iput-object p7, p0, Lnaq;->m:Lhoh;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_16
    iput-object p4, p0, Lnaq;->c:Loyd;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_17
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1a

    nop

    :goto_18
    iput-boolean v0, p0, Lnaq;->g:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_19
    iput v0, p0, Lnaq;->h:I

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_7

    nop

    :goto_1b
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1c
    sget-object p0, Lstd;->a:Lstd;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    :goto_0
    if-eqz v0, :cond_0

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

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-interface {v0}, Lpci;->close()V

    goto/32 :goto_6

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
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Lnaq;->f:Lpci;

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

    :goto_5
    return-void

    nop

    nop

    :goto_6
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput-object v0, p0, Lnaq;->f:Lpci;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop
.end method

.method public final dQ()V
    .locals 29

    goto/32 :goto_1c0

    nop

    nop

    :goto_0
    invoke-interface {v3}, Lprv;->getRowStride()I

    move-result v26

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    :goto_1
    or-int/2addr v10, v11

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v13, v10, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v3, v2, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_140

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v11, v10, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    goto/32 :goto_c7

    nop

    nop

    nop

    nop

    :goto_5
    iget v11, v10, Lnax;->b:I

    nop

    nop

    nop

    goto/32 :goto_f5

    nop

    nop

    nop

    :goto_6
    const-wide/16 v4, 0xc8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_7
    iget-object v9, v10, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_8
    mul-float/2addr v0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_1ae

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

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

    :goto_a
    if-eqz v3, :cond_0

    nop

    nop

    goto/32 :goto_10a

    nop

    nop

    :cond_0
    goto/32 :goto_109

    nop

    nop

    :goto_b
    new-instance v6, Landroid/graphics/RectF;

    nop

    nop

    goto/32 :goto_1a5

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v3, v2, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    goto/32 :goto_b3

    nop

    nop

    nop

    nop

    :goto_d
    or-int/lit8 v12, v12, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_1bd

    nop

    nop

    nop

    nop

    :goto_e
    move-object v4, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    :goto_f
    invoke-virtual {v2}, Ltkb;->o()V

    :goto_10
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_11
    const/4 v3, 0x1

    nop

    nop

    nop

    goto/32 :goto_122

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_1a4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/16 :goto_1e2

    nop

    nop

    :goto_15
    goto/32 :goto_f8

    nop

    nop

    nop

    :goto_16
    iget-wide v2, v4, Lcom/google/android/apps/camera/ui/hotshot/jni/HotshotObjectDetector;->c:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e0

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v3}, Landroid/hardware/camera2/params/Face;->getScore()I

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e3

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const/high16 v2, 0x42b40000    # 90.0f

    nop

    nop

    goto/32 :goto_1bf

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    check-cast v9, Lnav;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_1a
    invoke-static {v6, v7}, Lj$/util/Objects;->requireNonNullElse(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

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

    :goto_1b
    check-cast v10, Lnax;

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1c
    iput v6, v10, Lnax;->c:I

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v5}, Libn;->d()Ljava/util/List;

    move-result-object v5

    nop

    nop

    nop

    nop

    goto/32 :goto_1ba

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    nop

    nop

    nop

    goto/32 :goto_181

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iget v9, v6, Lnav;->d:F

    nop

    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v10}, Ltkb;->o()V

    :goto_21
    goto/32 :goto_4

    nop

    nop

    :goto_22
    check-cast v12, Lnav;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_146

    nop

    nop

    :goto_23
    iput-wide v2, v1, Lnaq;->l:J

    nop

    nop

    nop

    nop

    goto/32 :goto_106

    nop

    nop

    :goto_24
    invoke-static {v6, v12}, Lj$/util/Objects;->requireNonNullElse(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    nop

    goto/32 :goto_1f8

    nop

    nop

    nop

    nop

    :goto_25
    iput-boolean v2, v1, Lnaq;->g:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_26
    check-cast v12, Lnav;

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    :goto_27
    const/4 v8, 0x0

    nop

    nop

    goto/32 :goto_149

    nop

    nop

    nop

    nop

    :goto_28
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_29
    goto/16 :goto_4d

    nop

    :goto_2a
    goto/32 :goto_101

    nop

    nop

    :goto_2b
    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_126

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    int-to-float v10, v10

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_2d
    iput v6, v3, Lnax;->b:I

    nop

    goto/32 :goto_1fa

    nop

    nop

    :goto_2e
    const/high16 v2, 0x40400000    # 3.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_e6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    iput-object v10, v9, Lnax;->f:Ltkv;

    nop

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_81

    nop

    nop

    :goto_31
    iget v9, v6, Lnav;->k:F

    nop

    goto/32 :goto_99

    nop

    nop

    :goto_32
    invoke-virtual {v12}, Ltkg;->C()Z

    move-result v12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_135

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    sget-object v2, Lcom/google/android/apps/camera/ui/hotshot/jni/HotshotObjectDetector;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c9

    nop

    nop

    nop

    nop

    nop

    :goto_34
    iput v14, v13, Lnav;->b:I

    nop

    nop

    nop

    goto/32 :goto_1c5

    nop

    nop

    nop

    nop

    nop

    :goto_35
    check-cast v6, Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1fc

    nop

    nop

    nop

    nop

    :goto_36
    int-to-float v10, v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_141

    nop

    nop

    :goto_37
    const/4 v10, 0x0

    nop

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_14c

    nop

    nop

    :goto_39
    iget v12, v9, Lnav;->b:I

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_3a
    iget v0, v1, Lnaq;->h:I

    nop

    goto/32 :goto_134

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_133

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    iput v11, v12, Lnav;->f:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c7

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-virtual {v12}, Ltkg;->C()Z

    move-result v12

    nop

    nop

    goto/32 :goto_cf

    nop

    nop

    :goto_3e
    const/4 v11, 0x0

    nop

    :goto_3f
    goto/32 :goto_1f3

    nop

    nop

    nop

    nop

    :goto_40
    new-instance v10, Landroid/graphics/RectF;

    nop

    nop

    goto/32 :goto_12a

    nop

    nop

    nop

    nop

    :goto_41
    if-gtz v10, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_29

    nop

    nop

    nop

    :goto_42
    return-void

    nop

    nop

    nop

    nop

    :goto_43
    goto/32 :goto_82

    nop

    nop

    nop

    nop

    :goto_44
    invoke-static {v0, v10}, Ljava/lang/Math;->max(FF)F

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_c9

    nop

    nop

    nop

    :goto_45
    iget-wide v4, v1, Lnaq;->l:J

    nop

    nop

    goto/32 :goto_d1

    nop

    nop

    nop

    nop

    :goto_46
    const/4 v0, 0x0

    nop

    goto/32 :goto_ff

    nop

    nop

    nop

    nop

    :goto_47
    goto/16 :goto_125

    nop

    nop

    :goto_48
    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    nop

    :goto_49
    if-lez v0, :cond_2

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

    :cond_2
    goto/32 :goto_95

    nop

    :goto_4a
    const/4 v10, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_20c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    iget v0, v6, Landroid/graphics/RectF;->top:F

    nop

    nop

    nop

    nop

    goto/32 :goto_c2

    nop

    nop

    :goto_4c
    move v2, v0

    nop

    nop

    nop

    :goto_4d
    goto/32 :goto_d8

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    invoke-static {v0, v10}, Ljava/lang/Math;->max(FF)F

    move-result v0

    nop

    goto/32 :goto_16a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    if-lt v4, v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15f

    nop

    nop

    :cond_3
    goto/32 :goto_183

    nop

    nop

    nop

    :goto_50
    cmp-long v0, v2, v4

    nop

    nop

    goto/32 :goto_dc

    nop

    nop

    nop

    :goto_51
    iget-object v11, v10, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    nop

    :goto_52
    if-eqz v3, :cond_4

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_f

    nop

    nop

    :goto_53
    invoke-virtual {v15}, Lcom/google/googlex/gcam/MeshTranslation;->b()I

    move-result v15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_163

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_54
    const/4 v11, 0x0

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_55
    if-eqz v11, :cond_5

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_56
    aput-object v6, v2, v4

    nop

    nop

    goto/32 :goto_1d2

    nop

    nop

    :goto_57
    iput v9, v11, Lnav;->h:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    :goto_58
    move-wide v6, v12

    nop

    nop

    nop

    goto/32 :goto_174

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_59
    iget v10, v11, Llsf;->k:F

    nop

    nop

    goto/32 :goto_1a7

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    goto/32 :goto_96

    nop

    nop

    :goto_5b
    iget-object v0, v3, Lnay;->b:Ltkv;

    nop

    nop

    goto/32 :goto_1a9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    invoke-direct {v10, v11, v12, v13, v14}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto/32 :goto_139

    nop

    nop

    nop

    nop

    :goto_5d
    if-eqz v12, :cond_6

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_14a

    nop

    nop

    nop

    nop

    :goto_5e
    invoke-virtual {v7}, Lnaw;->a()Lcom/google/android/apps/camera/ui/hotshot/jni/ObjectInfo;

    move-result-object v6

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    goto/16 :goto_1e7

    nop

    nop

    nop

    :goto_60
    goto/32 :goto_151

    nop

    nop

    nop

    nop

    :goto_61
    cmp-long v10, v12, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a2

    nop

    nop

    nop

    nop

    :goto_62
    goto/16 :goto_fc

    nop

    :goto_63
    goto/32 :goto_b6

    nop

    nop

    nop

    nop

    :goto_64
    check-cast v13, Lnav;

    nop

    nop

    goto/32 :goto_162

    nop

    nop

    nop

    nop

    :goto_65
    invoke-virtual {v3}, Ltkg;->C()Z

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_66
    array-length v0, v7

    nop

    goto/32 :goto_b8

    nop

    nop

    nop

    :goto_67
    new-instance v7, Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_68
    iget v0, v6, Landroid/graphics/RectF;->top:F

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_69
    invoke-virtual {v12}, Ltkg;->C()Z

    move-result v12

    nop

    nop

    goto/32 :goto_11a

    nop

    nop

    :goto_6a
    check-cast v3, Lnax;

    nop

    nop

    goto/32 :goto_130

    nop

    nop

    :goto_6b
    cmpg-float v10, v0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_168

    nop

    nop

    :goto_6c
    const-wide/16 v2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_124

    nop

    nop

    :goto_6d
    const/16 v9, 0x23

    nop

    nop

    goto/32 :goto_155

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    add-int/lit8 v3, v3, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_158

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    move-object/from16 v0, v17

    nop

    nop

    nop

    goto/32 :goto_13e

    nop

    nop

    nop

    nop

    nop

    :goto_70
    new-array v7, v10, [Lcom/google/android/apps/camera/ui/hotshot/jni/ObjectInfo;

    nop

    nop

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    :goto_71
    invoke-direct {v10, v11, v11, v11, v11}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto/32 :goto_144

    nop

    nop

    :goto_72
    invoke-virtual {v7, v6}, Lnaw;->d(F)V

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_73
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_1d7

    nop

    nop

    nop

    nop

    :goto_74
    iget-object v12, v10, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_75
    invoke-interface {v3}, Lprv;->getPixelStride()I

    move-result v27

    nop

    nop

    goto/32 :goto_173

    nop

    nop

    nop

    :goto_76
    invoke-virtual {v2}, Ltkb;->o()V

    :goto_77
    goto/32 :goto_1aa

    nop

    nop

    nop

    :goto_78
    iput v14, v13, Lnav;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_bc

    nop

    nop

    nop

    nop

    :goto_79
    if-gtz v12, :cond_7

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_15c

    nop

    nop

    nop

    nop

    :goto_7a
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    goto/32 :goto_186

    nop

    nop

    :goto_7b
    iget v10, v14, Landroid/graphics/Rect;->bottom:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_7c
    invoke-virtual {v10}, Ltkb;->o()V

    :goto_7d
    goto/32 :goto_138

    nop

    nop

    :goto_7e
    invoke-virtual {v10}, Ltkb;->o()V

    :goto_7f
    goto/32 :goto_12f

    nop

    nop

    nop

    :goto_80
    neg-int v0, v0

    nop

    goto/32 :goto_f7

    nop

    nop

    nop

    nop

    nop

    :goto_81
    iget-object v9, v9, Lnax;->f:Ltkv;

    nop

    nop

    nop

    nop

    goto/32 :goto_198

    nop

    nop

    :goto_82
    invoke-interface {v5}, Lprw;->close()V

    goto/32 :goto_ca

    nop

    nop

    nop

    nop

    :goto_83
    cmp-long v0, v5, v9

    nop

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    :goto_84
    iget-object v15, v8, Llsc;->a:Lprk;

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    :goto_85
    invoke-virtual {v13}, Ltkg;->C()Z

    move-result v13

    nop

    nop

    goto/32 :goto_1f9

    nop

    nop

    nop

    nop

    nop

    :goto_86
    check-cast v9, Lnax;

    nop

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    :goto_87
    iput v11, v12, Lnav;->e:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12e

    nop

    nop

    nop

    :goto_88
    iput v10, v6, Lnax;->b:I

    nop

    nop

    nop

    goto/32 :goto_157

    nop

    nop

    nop

    nop

    :goto_89
    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    nop

    nop

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    :goto_8a
    iget-wide v5, v8, Llsc;->c:J

    nop

    nop

    nop

    goto/32 :goto_c4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8b
    check-cast v0, Lscz;

    nop

    nop

    nop

    goto/32 :goto_1a1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8c
    if-nez v8, :cond_8

    nop

    nop

    nop

    goto/32 :goto_100

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    :goto_8d
    or-int/2addr v11, v12

    nop

    nop

    nop

    nop

    goto/32 :goto_c0

    nop

    nop

    nop

    nop

    nop

    :goto_8e
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_142

    nop

    nop

    nop

    nop

    nop

    :goto_8f
    move-object v3, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_112

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_90
    move-object v8, v0

    nop

    nop

    nop

    :goto_91
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_92
    invoke-interface {v5}, Lprw;->c()I

    move-result v7

    nop

    nop

    goto/32 :goto_17e

    nop

    nop

    nop

    nop

    :goto_93
    iget v9, v9, Landroid/graphics/RectF;->bottom:F

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    :goto_94
    invoke-static {v2, v3, v6, v4}, Lnar;->b(IILandroid/graphics/Rect;Lryb;)Lnar;

    move-result-object v2

    nop

    nop

    goto/32 :goto_17d

    nop

    nop

    nop

    :goto_95
    goto/32 :goto_18d

    nop

    nop

    nop

    nop

    nop

    :goto_96
    goto/32 :goto_d0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_97
    const/4 v6, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    nop

    nop

    :goto_98
    iget v10, v14, Landroid/graphics/Rect;->right:I

    nop

    goto/32 :goto_1af

    nop

    nop

    nop

    nop

    :goto_99
    invoke-virtual {v7, v9}, Lnaw;->b(F)V

    goto/32 :goto_199

    nop

    nop

    nop

    :goto_9a
    int-to-float v10, v10

    nop

    goto/32 :goto_1ff

    nop

    nop

    nop

    :goto_9b
    invoke-virtual {v15}, Lcom/google/googlex/gcam/MeshWarp;->d()Lcom/google/googlex/gcam/MeshTranslation;

    move-result-object v16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13c

    nop

    nop

    :goto_9c
    iput-wide v5, v1, Lnaq;->k:J

    nop

    nop

    :goto_9d
    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9e
    invoke-virtual {v6}, Lcom/google/android/apps/camera/ui/hotshot/jni/ObjectInfo;->pan()Ljava/lang/Float;

    move-result-object v9

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_9f
    if-eqz v0, :cond_9

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_a0
    iget-object v13, v10, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    :goto_a1
    invoke-interface {v9, v11}, Lprk;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v9

    nop

    goto/32 :goto_1c1

    nop

    nop

    nop

    nop

    :goto_a2
    array-length v2, v9

    nop

    nop

    nop

    goto/32 :goto_d4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a3
    iget-wide v10, v9, Llsc;->c:J

    nop

    goto/32 :goto_1d5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a4
    move v2, v10

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

    nop

    :goto_a5
    invoke-static {v9, v12}, Lj$/util/Objects;->requireNonNullElse(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    nop

    nop

    nop

    nop

    goto/32 :goto_154

    nop

    nop

    nop

    nop

    nop

    :goto_a6
    iget-object v3, v2, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    :goto_a7
    goto/16 :goto_4d

    nop

    nop

    nop

    :goto_a8
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_a9
    check-cast v13, Lnav;

    nop

    goto/32 :goto_188

    nop

    nop

    nop

    nop

    :goto_aa
    iput v0, v6, Landroid/graphics/RectF;->bottom:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ab
    iget-object v12, v6, Lnav;->j:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_148

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ac
    check-cast v12, Lnav;

    nop

    nop

    nop

    nop

    goto/32 :goto_e5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ad
    div-float v2, v7, v13

    nop

    nop

    nop

    nop

    goto/32 :goto_d9

    nop

    nop

    nop

    :goto_ae
    invoke-virtual {v6}, Lcom/google/android/apps/camera/ui/hotshot/jni/ObjectInfo;->id()I

    move-result v11

    nop

    goto/32 :goto_108

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_af
    invoke-virtual {v11}, Ltkg;->C()Z

    move-result v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    :goto_b0
    check-cast v9, Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11f

    nop

    nop

    :goto_b1
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_179

    nop

    nop

    nop

    :goto_b2
    new-instance v10, Landroid/graphics/RectF;

    nop

    goto/32 :goto_1b4

    nop

    nop

    nop

    :goto_b3
    move-object v10, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_b4
    if-eq v0, v6, :cond_a

    nop

    goto/32 :goto_10c

    nop

    nop

    :cond_a
    goto/32 :goto_10b

    nop

    nop

    nop

    :goto_b5
    invoke-interface {v3}, Lprv;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v25

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_b6
    new-array v2, v0, [Lcom/google/android/apps/camera/ui/hotshot/jni/ObjectInfo;

    nop

    goto/32 :goto_18e

    nop

    nop

    nop

    :goto_b7
    invoke-interface {v2}, Lprv;->getPixelStride()I

    move-result v24

    nop

    nop

    nop

    nop

    goto/32 :goto_b5

    nop

    nop

    :goto_b8
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    :goto_b9
    goto/32 :goto_20e

    nop

    nop

    nop

    nop

    nop

    :goto_ba
    iget v13, v6, Lnav;->g:F

    nop

    nop

    nop

    nop

    goto/32 :goto_210

    nop

    nop

    nop

    nop

    :goto_bb
    iget-object v0, v1, Lnaq;->b:Ljvz;

    nop

    nop

    goto/32 :goto_1ee

    nop

    nop

    nop

    :goto_bc
    iput v9, v13, Lnav;->l:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_153

    nop

    nop

    nop

    nop

    :goto_bd
    if-eq v0, v2, :cond_b

    nop

    nop

    nop

    goto/32 :goto_15b

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_15a

    nop

    nop

    nop

    nop

    :goto_be
    mul-float/2addr v0, v2

    nop

    nop

    nop

    goto/32 :goto_114

    nop

    nop

    :goto_bf
    move/from16 v17, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17b

    nop

    nop

    nop

    nop

    nop

    :goto_c0
    iput v11, v10, Lnax;->b:I

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_c1
    invoke-virtual {v3, v10}, Lnaw;->b(F)V

    goto/32 :goto_1dc

    nop

    nop

    nop

    nop

    nop

    :goto_c2
    iget v10, v14, Landroid/graphics/Rect;->top:I

    nop

    nop

    goto/32 :goto_1ed

    nop

    nop

    :goto_c3
    iget v10, v14, Landroid/graphics/Rect;->left:I

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_c4
    iget-wide v9, v1, Lnaq;->k:J

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

    :goto_c5
    move/from16 v7, v17

    nop

    nop

    goto/32 :goto_1e9

    nop

    nop

    nop

    nop

    nop

    :goto_c6
    invoke-interface {v10}, Ltkv;->c()Z

    move-result v12

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_c7
    check-cast v11, Lnav;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_c8
    iget-object v9, v2, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    goto/32 :goto_cc

    nop

    nop

    :goto_c9
    iput v0, v6, Landroid/graphics/RectF;->top:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f0

    nop

    nop

    nop

    :goto_ca
    return-void

    nop

    :goto_cb
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_cc
    invoke-virtual {v9}, Ltkg;->C()Z

    move-result v9

    nop

    nop

    nop

    nop

    goto/32 :goto_111

    nop

    nop

    :goto_cd
    check-cast v12, Lnav;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_ce
    check-cast v2, Lprv;

    nop

    nop

    goto/32 :goto_14f

    nop

    nop

    nop

    :goto_cf
    if-eqz v12, :cond_c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_121

    nop

    nop

    :cond_c
    goto/32 :goto_120

    nop

    nop

    :goto_d0
    move-object/from16 v1, p0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_d1
    sub-long/2addr v2, v4

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

    nop

    :goto_d2
    if-nez v4, :cond_d

    nop

    goto/32 :goto_60

    nop

    nop

    :cond_d
    goto/32 :goto_1c6

    nop

    nop

    nop

    nop

    :goto_d3
    iget-object v4, v1, Lnaq;->e:Lcom/google/android/apps/camera/ui/hotshot/jni/HotshotObjectDetector;

    nop

    goto/32 :goto_176

    nop

    nop

    :goto_d4
    if-lt v4, v2, :cond_e

    nop

    nop

    nop

    nop

    goto/32 :goto_20d

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d5
    int-to-float v0, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    nop

    :goto_d6
    invoke-interface {v5}, Lprw;->close()V

    goto/32 :goto_19b

    nop

    nop

    nop

    nop

    :goto_d7
    iget v0, v6, Landroid/graphics/RectF;->left:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_209

    nop

    nop

    nop

    :goto_d8
    iget v0, v11, Llsf;->l:F

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    :goto_d9
    aget-object v3, v9, v4

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

    :goto_da
    invoke-virtual {v12}, Ltkg;->C()Z

    move-result v12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1de

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_db
    iget v0, v11, Llsf;->i:I

    nop

    goto/32 :goto_bd

    nop

    nop

    :goto_dc
    if-ltz v0, :cond_f

    nop

    nop

    nop

    goto/32 :goto_1da

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_1d9

    nop

    nop

    nop

    :goto_dd
    array-length v11, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1fd

    nop

    nop

    :goto_de
    invoke-virtual {v3}, Lnaw;->a()Lcom/google/android/apps/camera/ui/hotshot/jni/ObjectInfo;

    move-result-object v0

    nop

    nop

    goto/32 :goto_eb

    nop

    nop

    :goto_df
    new-array v0, v2, [Lcom/google/android/apps/camera/ui/hotshot/jni/ObjectInfo;

    nop

    nop

    goto/32 :goto_11c

    nop

    nop

    nop

    :goto_e0
    invoke-interface {v0}, Lprv;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v19

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_189

    nop

    nop

    :goto_e1
    invoke-virtual {v3, v2}, Lnaw;->d(F)V

    goto/32 :goto_de

    nop

    nop

    nop

    nop

    :goto_e2
    check-cast v6, Lnav;

    nop

    nop

    goto/32 :goto_c8

    nop

    nop

    nop

    :goto_e3
    int-to-float v3, v3

    nop

    nop

    nop

    goto/32 :goto_bf

    nop

    nop

    :goto_e4
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f9

    nop

    nop

    nop

    nop

    :goto_e5
    iput v11, v12, Lnav;->d:F

    nop

    nop

    nop

    nop

    goto/32 :goto_1be

    nop

    nop

    nop

    :goto_e6
    mul-float/2addr v0, v2

    nop

    nop

    :goto_e7
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e8
    iput v6, v9, Lnav;->m:F

    nop

    nop

    nop

    goto/32 :goto_1d3

    nop

    nop

    :goto_e9
    move-object/from16 v17, v0

    nop

    goto/32 :goto_db

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ea
    if-nez v5, :cond_10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_100

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_eb
    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_194

    nop

    nop

    nop

    nop

    :goto_ec
    neg-int v10, v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1ef

    nop

    nop

    nop

    nop

    nop

    :goto_ed
    iget v0, v6, Landroid/graphics/RectF;->left:F

    nop

    nop

    nop

    nop

    goto/32 :goto_c3

    nop

    nop

    nop

    nop

    nop

    :goto_ee
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    goto/32 :goto_1fe

    nop

    nop

    :goto_ef
    iget-object v13, v10, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    :goto_f0
    check-cast v9, Ljava/lang/Float;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d1

    nop

    nop

    :goto_f1
    cmp-long v12, v10, v12

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    :goto_f2
    invoke-interface {v2}, Lprv;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v22

    nop

    nop

    goto/32 :goto_1b0

    nop

    nop

    nop

    nop

    nop

    :goto_f3
    invoke-interface {v5}, Lprw;->b()I

    move-result v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e0

    nop

    nop

    :goto_f4
    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v13

    nop

    goto/32 :goto_204

    nop

    nop

    nop

    nop

    :goto_f5
    const/4 v12, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f6
    iput v0, v6, Landroid/graphics/RectF;->right:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14d

    nop

    nop

    nop

    nop

    :goto_f7
    add-int v0, v0, v16

    nop

    nop

    goto/32 :goto_137

    nop

    nop

    nop

    nop

    :goto_f8
    new-instance v12, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_208

    nop

    nop

    nop

    :goto_f9
    iput-boolean v0, v1, Lnaq;->g:Z

    nop

    goto/32 :goto_10e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_fa
    invoke-direct {v6, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    goto/32 :goto_ed

    nop

    nop

    nop

    nop

    :goto_fb
    move-object v4, v2

    nop

    nop

    nop

    nop

    :goto_fc
    goto/32 :goto_16b

    nop

    nop

    nop

    nop

    :goto_fd
    const/4 v6, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_160

    nop

    nop

    nop

    :goto_fe
    iget-object v3, v2, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    goto/32 :goto_15d

    nop

    nop

    :goto_ff
    throw v0

    nop

    nop

    :goto_100
    goto/32 :goto_18c

    nop

    nop

    :goto_101
    const/high16 v2, -0x3d4c0000    # -90.0f

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    :goto_102
    invoke-interface {v5}, Lprw;->b()I

    move-result v3

    nop

    nop

    goto/32 :goto_20a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_103
    const v1, 0x1c

    nop

    goto/32 :goto_193

    nop

    nop

    nop

    nop

    :goto_104
    invoke-interface {v0}, Lscz;->q()V

    :goto_105
    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_106
    iget-object v0, v1, Lnaq;->i:Libn;

    nop

    nop

    nop

    goto/32 :goto_1cd

    nop

    nop

    nop

    nop

    nop

    :goto_107
    sub-long/2addr v12, v10

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    :goto_108
    iget-object v12, v10, Ltkb;->b:Ltkg;

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

    :goto_109
    invoke-virtual {v2}, Ltkb;->o()V

    :goto_10a
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10b
    goto/16 :goto_43

    nop

    nop

    nop

    nop

    :goto_10c
    goto/32 :goto_e4

    nop

    nop

    :goto_10d
    iget v0, v6, Landroid/graphics/RectF;->bottom:F

    nop

    nop

    nop

    goto/32 :goto_be

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10e
    invoke-interface {v5}, Lprw;->a()I

    move-result v7

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    :goto_10f
    invoke-virtual {v2}, Ltkb;->o()V

    :goto_110
    goto/32 :goto_1f6

    nop

    nop

    nop

    nop

    nop

    :goto_111
    if-eqz v9, :cond_11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_110

    nop

    nop

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_10f

    nop

    nop

    nop

    :goto_112
    goto :goto_105

    nop

    :catch_0
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_113
    rsub-int v0, v0, 0x168

    nop

    nop

    nop

    goto/32 :goto_12b

    nop

    nop

    :goto_114
    iput v0, v6, Landroid/graphics/RectF;->bottom:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19a

    nop

    nop

    :goto_115
    invoke-virtual {v10}, Ltkb;->o()V

    :goto_116
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_117
    int-to-float v7, v7

    nop

    nop

    goto/32 :goto_1ab

    nop

    nop

    :goto_118
    check-cast v12, Lnav;

    nop

    nop

    goto/32 :goto_192

    nop

    nop

    nop

    :goto_119
    iget v6, v6, Lnav;->m:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    :goto_11a
    if-eqz v12, :cond_12

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    :cond_12
    goto/32 :goto_7c

    nop

    nop

    :goto_11b
    check-cast v0, Lscz;

    nop

    nop

    nop

    nop

    goto/32 :goto_104

    nop

    nop

    :goto_11c
    invoke-interface {v12, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_1b8

    nop

    nop

    nop

    :goto_11d
    add-int/lit8 v10, v10, 0x1

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    :goto_11e
    iget-object v5, v1, Lnaq;->i:Libn;

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_11f
    sget-object v10, Lnav;->a:Lnav;

    nop

    nop

    nop

    goto/32 :goto_191

    nop

    nop

    :goto_120
    invoke-virtual {v10}, Ltkb;->o()V

    :goto_121
    goto/32 :goto_74

    nop

    nop

    nop

    nop

    :goto_122
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    nop

    goto/32 :goto_ce

    nop

    nop

    nop

    :goto_123
    iget-object v12, v10, Ltkb;->b:Ltkg;

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

    :goto_124
    if-eqz v0, :cond_13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_128

    nop

    nop

    nop

    nop

    nop

    :cond_13
    :goto_125
    goto/32 :goto_13b

    nop

    nop

    nop

    :goto_126
    invoke-static {v9, v12}, Lj$/util/Objects;->requireNonNullElse(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    nop

    nop

    nop

    goto/32 :goto_f0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_127
    goto/16 :goto_9d

    nop

    nop

    nop

    :goto_128
    goto/32 :goto_11e

    nop

    nop

    nop

    nop

    :goto_129
    cmpg-float v10, v0, v2

    nop

    nop

    goto/32 :goto_206

    nop

    nop

    nop

    nop

    :goto_12a
    const/4 v11, 0x0

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    :goto_12b
    if-eqz v2, :cond_14

    nop

    nop

    nop

    nop

    goto/32 :goto_1cb

    nop

    nop

    nop

    nop

    nop

    :cond_14
    goto/32 :goto_1eb

    nop

    nop

    nop

    :goto_12c
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_f4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12d
    const/4 v4, 0x0

    nop

    nop

    nop

    goto/32 :goto_1ca

    nop

    nop

    :goto_12e
    iget v11, v9, Landroid/graphics/RectF;->top:F

    nop

    goto/32 :goto_207

    nop

    nop

    :goto_12f
    iget-object v12, v10, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    goto/32 :goto_118

    nop

    nop

    nop

    nop

    nop

    :goto_130
    iget v6, v3, Lnax;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1fb

    nop

    nop

    nop

    :goto_131
    invoke-interface {v0, v2}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_12d

    nop

    nop

    nop

    nop

    nop

    :goto_132
    invoke-virtual {v15}, Lcom/google/googlex/gcam/MeshWarp;->d()Lcom/google/googlex/gcam/MeshTranslation;

    move-result-object v15

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_133
    iget-object v9, v10, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_1f2

    nop

    nop

    :goto_134
    if-nez v0, :cond_15

    nop

    nop

    goto/32 :goto_cb

    nop

    nop

    nop

    nop

    :cond_15
    goto/32 :goto_fd

    nop

    nop

    nop

    nop

    :goto_135
    if-eqz v12, :cond_16

    nop

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    :cond_16
    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_136
    aget-object v11, v0, v10

    nop

    goto/32 :goto_e9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_137
    iget v10, v14, Landroid/graphics/Rect;->top:I

    nop

    nop

    goto/32 :goto_ec

    nop

    nop

    :goto_138
    iget-object v12, v10, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_cd

    nop

    nop

    :goto_139
    iget-object v11, v6, Lnav;->i:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    :goto_13a
    iget v0, v14, Landroid/graphics/Rect;->left:I

    nop

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    :goto_13b
    const/4 v8, 0x0

    nop

    nop

    nop

    goto/32 :goto_127

    nop

    nop

    nop

    nop

    :goto_13c
    invoke-virtual/range {v16 .. v16}, Lcom/google/googlex/gcam/MeshTranslation;->a()I

    move-result v16

    nop

    nop

    goto/32 :goto_132

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13d
    iget-object v13, v10, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f1

    nop

    nop

    :goto_13e
    goto/16 :goto_166

    nop

    nop

    nop

    :goto_13f
    goto/32 :goto_3e

    nop

    nop

    :goto_140
    move-object v6, v3

    nop

    nop

    goto/32 :goto_19e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_141
    invoke-static {v0, v10}, Ljava/lang/Math;->min(FF)F

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_142
    iget-object v10, v9, Lnax;->f:Ltkv;

    nop

    nop

    nop

    nop

    goto/32 :goto_c6

    nop

    nop

    nop

    :goto_143
    invoke-virtual {v3}, Landroid/hardware/camera2/params/Face;->getId()I

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_165

    nop

    nop

    nop

    nop

    :goto_144
    invoke-static {v9, v10}, Lj$/util/Objects;->requireNonNullElse(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    nop

    nop

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    :goto_145
    const-wide v6, 0x7fffffffffffffffL

    nop

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    :goto_146
    iput v11, v12, Lnav;->c:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14e

    nop

    nop

    :goto_147
    const/4 v4, 0x2

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    nop

    nop

    nop

    :goto_148
    invoke-static {v7, v9, v10, v11, v12}, Lcom/google/android/apps/camera/ui/hotshot/jni/ObjectInfo;->createBuilder(IFLandroid/graphics/RectF;Ljava/lang/String;Ljava/lang/String;)Lnaw;

    move-result-object v7

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_149
    invoke-direct {v7, v8, v8, v8, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    goto/32 :goto_1a

    nop

    nop

    :goto_14a
    invoke-static {v10}, Ltkg;->v(Ltkv;)Ltkv;

    move-result-object v10

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_14b
    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object v2

    nop

    nop

    goto/32 :goto_1e6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14c
    invoke-virtual {v3}, Landroid/hardware/camera2/params/Face;->getId()I

    move-result v11

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14d
    iget v0, v6, Landroid/graphics/RectF;->bottom:F

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14e
    invoke-virtual {v6}, Lcom/google/android/apps/camera/ui/hotshot/jni/ObjectInfo;->score()F

    move-result v11

    nop

    goto/32 :goto_205

    nop

    nop

    nop

    nop

    :goto_14f
    invoke-interface {v5}, Lprw;->g()Ljava/util/List;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_147

    nop

    nop

    nop

    :goto_150
    cmp-long v2, v2, v10

    nop

    goto/32 :goto_113

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_151
    iget-object v0, v1, Lnaq;->j:Loyn;

    nop

    nop

    goto/32 :goto_14b

    nop

    nop

    nop

    nop

    :goto_152
    iput v0, v6, Landroid/graphics/RectF;->right:F

    nop

    nop

    nop

    nop

    goto/32 :goto_10d

    nop

    nop

    nop

    nop

    nop

    :goto_153
    invoke-virtual {v6}, Lcom/google/android/apps/camera/ui/hotshot/jni/ObjectInfo;->tilt()Ljava/lang/Float;

    move-result-object v6

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_154
    check-cast v9, Ljava/lang/Float;

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    :goto_155
    const/4 v10, 0x0

    nop

    nop

    goto/32 :goto_156

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_156
    if-eq v7, v9, :cond_17

    nop

    nop

    goto/32 :goto_1e7

    nop

    :cond_17
    goto/32 :goto_92

    nop

    nop

    nop

    nop

    :goto_157
    iput v9, v6, Lnax;->d:I

    nop

    goto/32 :goto_20f

    nop

    nop

    nop

    nop

    :goto_158
    goto/16 :goto_b9

    nop

    :goto_159
    goto/32 :goto_1f7

    nop

    nop

    nop

    nop

    nop

    :goto_15a
    goto/16 :goto_3f

    nop

    nop

    nop

    :goto_15b
    goto/32 :goto_11d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15c
    iget-wide v12, v0, Llsc;->c:J

    nop

    goto/32 :goto_107

    nop

    nop

    nop

    nop

    :goto_15d
    invoke-virtual {v3}, Ltkg;->C()Z

    move-result v3

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_15e
    goto/16 :goto_18f

    nop

    nop

    nop

    nop

    nop

    :goto_15f
    goto/32 :goto_fb

    nop

    nop

    nop

    nop

    nop

    :goto_160
    if-ne v0, v6, :cond_18

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :cond_18
    goto/32 :goto_97

    nop

    nop

    nop

    nop

    nop

    :goto_161
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_162
    iget v14, v13, Lnav;->b:I

    nop

    nop

    nop

    goto/32 :goto_182

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_163
    move v4, v10

    nop

    nop

    :goto_164
    goto/32 :goto_a2

    nop

    nop

    :goto_165
    const/4 v10, 0x0

    nop

    nop

    :goto_166
    goto/32 :goto_dd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_167
    if-eqz v13, :cond_19

    nop

    nop

    nop

    nop

    goto/32 :goto_116

    nop

    nop

    nop

    :cond_19
    goto/32 :goto_115

    nop

    nop

    :goto_168
    if-ltz v10, :cond_1a

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    :cond_1a
    goto/32 :goto_a7

    nop

    nop

    :goto_169
    iget-object v12, v10, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_da

    nop

    nop

    nop

    :goto_16a
    iput v0, v6, Landroid/graphics/RectF;->left:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_16b
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    :goto_16c
    goto/32 :goto_d2

    nop

    nop

    :goto_16d
    invoke-static {v11, v3, v6, v7, v7}, Lcom/google/android/apps/camera/ui/hotshot/jni/ObjectInfo;->createBuilder(IFLandroid/graphics/RectF;Ljava/lang/String;Ljava/lang/String;)Lnaw;

    move-result-object v3

    nop

    nop

    goto/32 :goto_c1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16e
    check-cast v0, Lprv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1ec

    nop

    nop

    nop

    :goto_16f
    if-eqz v0, :cond_1b

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    :cond_1b
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_170
    iget-object v12, v10, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_171
    iget v0, v6, Landroid/graphics/RectF;->right:F

    nop

    nop

    goto/32 :goto_1c8

    nop

    nop

    :goto_172
    invoke-static {v0, v10}, Ljava/lang/Math;->min(FF)F

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f6

    nop

    nop

    nop

    :goto_173
    iget v0, v8, Llsc;->s:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_174
    goto/16 :goto_91

    nop

    nop

    nop

    nop

    :goto_175
    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    nop

    :goto_176
    invoke-interface {v5}, Lprw;->c()I

    move-result v6

    nop

    nop

    goto/32 :goto_f3

    nop

    nop

    :goto_177
    iget-object v14, v8, Llsc;->o:Landroid/graphics/Rect;

    nop

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

    :goto_178
    if-ltz v10, :cond_1c

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    :cond_1c
    goto/32 :goto_1ea

    nop

    nop

    :goto_179
    check-cast v3, Lprv;

    nop

    nop

    nop

    goto/32 :goto_d3

    nop

    nop

    nop

    nop

    :goto_17a
    invoke-virtual {v12}, Ltkg;->C()Z

    move-result v12

    nop

    nop

    nop

    nop

    goto/32 :goto_203

    nop

    nop

    nop

    nop

    :goto_17b
    const-string v7, ""

    nop

    nop

    goto/32 :goto_16d

    nop

    nop

    nop

    :goto_17c
    cmp-long v10, v12, v6

    nop

    nop

    nop

    goto/32 :goto_178

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17d
    invoke-static {v2}, Lj$/util/Optional;->of(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_184

    nop

    nop

    nop

    nop

    :goto_17e
    iget-object v9, v8, Llsc;->a:Lprk;

    nop

    nop

    goto/32 :goto_197

    nop

    nop

    nop

    nop

    nop

    :goto_17f
    invoke-interface {v0}, Lprv;->getPixelStride()I

    move-result v21

    nop

    nop

    nop

    goto/32 :goto_f2

    nop

    nop

    :goto_180
    iget-object v12, v10, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_181
    if-nez v9, :cond_1d

    nop

    goto/32 :goto_175

    nop

    nop

    nop

    nop

    nop

    :cond_1d
    goto/32 :goto_18b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_182
    const/4 v15, 0x1

    nop

    nop

    goto/32 :goto_1d6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_183
    iget-object v6, v3, Lnay;->b:Ltkv;

    nop

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_184
    invoke-interface {v0, v2}, Loyn;->a(Ljava/lang/Object;)V

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_185
    const/4 v6, 0x2

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_186
    check-cast v6, Lnav;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19c

    nop

    nop

    nop

    :goto_187
    invoke-virtual {v2}, Ltkg;->m()Ltkb;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_fe

    nop

    nop

    nop

    nop

    nop

    :goto_188
    iget v14, v13, Lnav;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_18a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_189
    invoke-interface {v0}, Lprv;->getRowStride()I

    move-result v20

    nop

    nop

    nop

    goto/32 :goto_17f

    nop

    nop

    nop

    nop

    nop

    :goto_18a
    const/16 v16, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_1b6

    nop

    nop

    nop

    :goto_18b
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    nop

    nop

    nop

    nop

    goto/32 :goto_1a3

    nop

    nop

    :goto_18c
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_18d
    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18e
    const/4 v4, 0x0

    nop

    nop

    nop

    :goto_18f
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_190
    check-cast v0, Lscz;

    nop

    nop

    nop

    nop

    goto/32 :goto_1bc

    nop

    nop

    nop

    :goto_191
    invoke-virtual {v10}, Ltkg;->m()Ltkb;

    move-result-object v10

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    :goto_192
    iput v11, v12, Lnav;->g:F

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_193
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_161

    nop

    nop

    nop

    :goto_194
    add-int/lit8 v4, v4, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_c5

    nop

    nop

    nop

    nop

    nop

    :goto_195
    invoke-virtual {v10}, Ltkb;->o()V

    :goto_196
    goto/32 :goto_170

    nop

    nop

    nop

    :goto_197
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_20b

    nop

    nop

    nop

    nop

    :goto_198
    invoke-interface {v9, v6}, Ltkv;->add(Ljava/lang/Object;)Z

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_199
    iget v9, v6, Lnav;->l:F

    nop

    goto/32 :goto_1f5

    nop

    nop

    nop

    :goto_19a
    iget-object v0, v8, Llsc;->q:[Llsf;

    nop

    goto/32 :goto_143

    nop

    nop

    nop

    nop

    nop

    :goto_19b
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_19c
    iget v7, v6, Lnav;->c:I

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_19d
    invoke-interface {v5}, Lprw;->g()Ljava/util/List;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1dd

    nop

    nop

    nop

    nop

    nop

    :goto_19e
    check-cast v6, Lnax;

    nop

    nop

    goto/32 :goto_1ad

    nop

    nop

    nop

    nop

    nop

    :goto_19f
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_1a0
    iput v0, v6, Landroid/graphics/RectF;->left:F

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    :goto_1a1
    const/16 v2, 0x12f0

    nop

    nop

    goto/32 :goto_1e5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a2
    if-gtz v10, :cond_1e

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    :cond_1e
    goto/32 :goto_17c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a3
    check-cast v9, Llsc;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    nop

    :goto_1a4
    new-array v0, v2, [Lcom/google/android/apps/camera/ui/hotshot/jni/ObjectInfo;

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

    :goto_1a5
    invoke-virtual {v3}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_fa

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a6
    const/16 v2, 0x12f1

    nop

    nop

    nop

    nop

    goto/32 :goto_1b7

    nop

    nop

    nop

    :goto_1a7
    goto/16 :goto_38

    nop

    nop

    nop

    :goto_1a8
    goto/32 :goto_1cc

    nop

    nop

    nop

    nop

    nop

    :goto_1a9
    invoke-interface {v0}, Ltkv;->size()I

    move-result v0

    nop

    nop

    goto/32 :goto_16f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1aa
    rem-int/lit16 v0, v0, 0x168

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    :goto_1ab
    iget-object v13, v8, Llsc;->o:Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    goto/32 :goto_12c

    nop

    nop

    :goto_1ac
    if-eqz v9, :cond_1f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1cf

    nop

    nop

    nop

    :cond_1f
    goto/32 :goto_1ce

    nop

    nop

    nop

    nop

    nop

    :goto_1ad
    iget v10, v6, Lnax;->b:I

    nop

    nop

    goto/32 :goto_1c3

    nop

    nop

    nop

    nop

    nop

    :goto_1ae
    iput v0, v6, Landroid/graphics/RectF;->top:F

    nop

    goto/32 :goto_171

    nop

    nop

    nop

    :goto_1af
    int-to-float v10, v10

    nop

    nop

    nop

    goto/32 :goto_172

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b0
    invoke-interface {v2}, Lprv;->getRowStride()I

    move-result v23

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    :goto_1b1
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_129

    nop

    nop

    :goto_1b2
    invoke-virtual {v10}, Ltkb;->o()V

    :goto_1b3
    goto/32 :goto_ef

    nop

    nop

    nop

    nop

    nop

    :goto_1b4
    iget v11, v6, Lnav;->e:F

    nop

    nop

    nop

    nop

    goto/32 :goto_1f4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b5
    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b6
    or-int/lit8 v14, v14, 0x2

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b7
    invoke-interface {v0, v2}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    goto/32 :goto_190

    nop

    nop

    :goto_1b8
    move-object v7, v0

    nop

    goto/32 :goto_1e1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b9
    sget-object v7, Lhmv;->a:Lhmn;

    nop

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    :goto_1ba
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    nop

    nop

    nop

    goto/32 :goto_145

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1bb
    aget-object v6, v7, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_1df

    nop

    nop

    :goto_1bc
    const-string v2, "No handle, reject."

    nop

    goto/32 :goto_131

    nop

    nop

    nop

    :goto_1bd
    iput v12, v9, Lnav;->b:I

    nop

    nop

    goto/32 :goto_e8

    nop

    nop

    nop

    :goto_1be
    iget v11, v9, Landroid/graphics/RectF;->left:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_169

    nop

    nop

    nop

    nop

    nop

    :goto_1bf
    cmpl-float v10, v0, v2

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_1c0
    const v0, 0x19

    nop

    nop

    goto/32 :goto_103

    nop

    nop

    nop

    :goto_1c1
    check-cast v9, [Landroid/hardware/camera2/params/Face;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c4

    nop

    nop

    :goto_1c2
    invoke-interface {v0, v5, v6}, Ljvz;->d(J)Lprw;

    move-result-object v5

    nop

    nop

    goto/32 :goto_ea

    nop

    nop

    nop

    :goto_1c3
    const/4 v11, 0x2

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1c4
    if-eqz v9, :cond_20

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :cond_20
    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c5
    iput v9, v13, Lnav;->k:F

    nop

    nop

    nop

    goto/32 :goto_201

    nop

    nop

    nop

    nop

    nop

    :goto_1c6
    iget-object v0, v1, Lnaq;->j:Loyn;

    nop

    nop

    nop

    nop

    goto/32 :goto_1db

    nop

    nop

    :goto_1c7
    iget v11, v9, Landroid/graphics/RectF;->right:F

    nop

    goto/32 :goto_180

    nop

    nop

    nop

    nop

    nop

    :goto_1c8
    mul-float/2addr v0, v2

    nop

    nop

    goto/32 :goto_152

    nop

    nop

    nop

    :goto_1c9
    invoke-virtual {v2}, Lscs;->b()Lsdo;

    move-result-object v2

    nop

    nop

    goto/32 :goto_1d0

    nop

    nop

    nop

    nop

    nop

    :goto_1ca
    goto/16 :goto_16c

    nop

    nop

    nop

    :goto_1cb
    goto/32 :goto_ee

    nop

    nop

    :goto_1cc
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_1cd
    invoke-virtual {v0}, Libn;->b()Llsc;

    move-result-object v0

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    :goto_1ce
    invoke-virtual {v10}, Ltkb;->o()V

    :goto_1cf
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1d0
    invoke-interface {v2, v0}, Lscz;->i(Ljava/lang/Throwable;)Lsdo;

    move-result-object v0

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    :goto_1d1
    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    nop

    goto/32 :goto_13d

    nop

    nop

    nop

    :goto_1d2
    add-int/lit8 v4, v4, 0x1

    nop

    nop

    nop

    goto/32 :goto_15e

    nop

    nop

    nop

    nop

    :goto_1d3
    invoke-virtual {v10}, Ltkb;->i()Ltkg;

    move-result-object v6

    nop

    nop

    goto/32 :goto_e2

    nop

    nop

    nop

    nop

    nop

    :goto_1d4
    iget v0, v11, Llsf;->j:F

    nop

    goto/32 :goto_1e8

    nop

    nop

    :goto_1d5
    iget-wide v12, v1, Lnaq;->k:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f1

    nop

    nop

    nop

    nop

    :goto_1d6
    or-int/2addr v14, v15

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d7
    invoke-static {v14, v15}, Ltbt;->n(Landroid/graphics/Rect;Lprk;)Lcom/google/googlex/gcam/MeshWarp;

    move-result-object v15

    nop

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d8
    move v2, v10

    nop

    nop

    nop

    goto/32 :goto_df

    nop

    nop

    nop

    :goto_1d9
    goto/16 :goto_100

    nop

    nop

    nop

    nop

    :goto_1da
    goto/32 :goto_19f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1db
    invoke-interface {v5}, Lprw;->c()I

    move-result v2

    nop

    nop

    goto/32 :goto_102

    nop

    nop

    :goto_1dc
    invoke-virtual {v3, v0}, Lnaw;->c(F)V

    goto/32 :goto_e1

    nop

    nop

    :goto_1dd
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_16e

    nop

    nop

    nop

    nop

    :goto_1de
    if-eqz v12, :cond_21

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_196

    nop

    :cond_21
    goto/32 :goto_195

    nop

    nop

    nop

    :goto_1df
    invoke-virtual {v6}, Lcom/google/android/apps/camera/ui/hotshot/jni/ObjectInfo;->bounds()Landroid/graphics/RectF;

    move-result-object v9

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_1e0
    const-wide/16 v10, 0x0

    nop

    nop

    goto/32 :goto_150

    nop

    nop

    :goto_1e1
    check-cast v7, [Lcom/google/android/apps/camera/ui/hotshot/jni/ObjectInfo;

    nop

    nop

    nop

    nop

    :goto_1e2
    goto/32 :goto_19d

    nop

    nop

    nop

    nop

    nop

    :goto_1e3
    invoke-virtual {v10}, Ltkb;->o()V

    :goto_1e4
    goto/32 :goto_123

    nop

    nop

    nop

    nop

    :goto_1e5
    invoke-interface {v0, v2}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_11b

    nop

    nop

    nop

    nop

    nop

    :goto_1e6
    invoke-interface {v0, v2}, Loyn;->a(Ljava/lang/Object;)V

    :goto_1e7
    goto/32 :goto_d6

    nop

    nop

    nop

    nop

    nop

    :goto_1e8
    const/high16 v2, 0x41000000    # 8.0f

    nop

    nop

    nop

    goto/32 :goto_202

    nop

    nop

    nop

    nop

    nop

    :goto_1e9
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_185

    nop

    nop

    :goto_1ea
    move-object v8, v9

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

    nop

    :goto_1eb
    sget-object v0, Lcom/google/android/apps/camera/ui/hotshot/jni/HotshotObjectDetector;->a:Lsdb;

    nop

    nop

    nop

    nop

    goto/32 :goto_1b5

    nop

    nop

    nop

    nop

    :goto_1ec
    invoke-interface {v5}, Lprw;->g()Ljava/util/List;

    move-result-object v2

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_1ed
    int-to-float v10, v10

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_1ee
    iget-wide v5, v8, Llsc;->c:J

    nop

    nop

    nop

    goto/32 :goto_1c2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1ef
    add-int/2addr v10, v15

    nop

    nop

    nop

    goto/32 :goto_d5

    nop

    nop

    nop

    nop

    :goto_1f0
    iget v0, v6, Landroid/graphics/RectF;->right:F

    nop

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f1
    invoke-virtual {v13}, Ltkg;->C()Z

    move-result v13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_167

    nop

    nop

    nop

    nop

    :goto_1f2
    invoke-virtual {v9}, Ltkg;->C()Z

    move-result v9

    nop

    nop

    nop

    goto/32 :goto_1ac

    nop

    nop

    nop

    nop

    nop

    :goto_1f3
    if-nez v11, :cond_22

    nop

    nop

    nop

    goto/32 :goto_1a8

    nop

    :cond_22
    goto/32 :goto_1d4

    nop

    nop

    nop

    :goto_1f4
    iget v12, v6, Lnav;->f:F

    nop

    nop

    nop

    nop

    goto/32 :goto_ba

    nop

    nop

    :goto_1f5
    invoke-virtual {v7, v9}, Lnaw;->c(F)V

    goto/32 :goto_119

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f6
    iget-object v9, v2, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    :goto_1f7
    sget-object v3, Lnay;->a:Lnay;

    nop

    :try_start_0
    iget-wide v6, v4, Lcom/google/android/apps/camera/ui/hotshot/jni/HotshotObjectDetector;->c:J

    nop

    nop

    invoke-virtual {v2}, Ltkb;->i()Ltkg;

    move-result-object v0

    nop

    nop

    nop

    nop

    check-cast v0, Lnax;

    nop

    nop

    invoke-virtual {v0}, Ltis;->h()[B

    move-result-object v28

    nop

    nop

    move-wide/from16 v17, v6

    nop

    nop

    nop

    nop

    invoke-static/range {v17 .. v28}, Lcom/google/android/apps/camera/ui/hotshot/jni/HotshotObjectDetector;->getProcessDetectionResult(JLjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;II[B)[B

    move-result-object v0

    nop

    nop

    nop

    invoke-static {}, Ltjv;->a()Ltjv;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    sget-object v4, Lnay;->a:Lnay;

    nop

    array-length v6, v0

    nop

    nop

    const/4 v7, 0x0

    nop

    nop

    nop

    nop

    invoke-static {v4, v0, v7, v6, v2}, Ltkg;->q(Ltkg;[BIILtjv;)Ltkg;

    move-result-object v0

    nop

    nop

    nop

    nop

    invoke-static {v0}, Ltkg;->E(Ltkg;)V

    check-cast v0, Lnay;

    nop

    nop

    nop
    :try_end_0
    .catch Ltky; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    :goto_1f8
    check-cast v6, Ljava/lang/Float;

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_1f9
    if-eqz v13, :cond_23

    nop

    nop

    nop

    goto/32 :goto_1b3

    nop

    nop

    nop

    nop

    nop

    :cond_23
    goto/32 :goto_1b2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1fa
    iput v0, v3, Lnax;->e:I

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    :goto_1fb
    or-int/lit8 v6, v6, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_1fc
    invoke-static {v4}, Lryb;->k([Ljava/lang/Object;)Lryb;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_1b9

    nop

    nop

    :goto_1fd
    if-lt v10, v11, :cond_24

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13f

    nop

    :cond_24
    goto/32 :goto_136

    nop

    nop

    :goto_1fe
    sget-object v2, Lnax;->a:Lnax;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_187

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1ff
    invoke-virtual {v6, v0, v10}, Landroid/graphics/RectF;->offset(FF)V

    goto/32 :goto_d7

    nop

    nop

    nop

    nop

    nop

    :goto_200
    if-eqz v3, :cond_25

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    :cond_25
    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    :goto_201
    invoke-virtual {v6}, Lcom/google/android/apps/camera/ui/hotshot/jni/ObjectInfo;->roll()Ljava/lang/Float;

    move-result-object v9

    nop

    nop

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    :goto_202
    add-float/2addr v0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_1b1

    nop

    nop

    nop

    nop

    :goto_203
    if-eqz v12, :cond_26

    nop

    nop

    goto/32 :goto_1e4

    nop

    nop

    nop

    :cond_26
    goto/32 :goto_1e3

    nop

    nop

    nop

    nop

    nop

    :goto_204
    int-to-float v13, v13

    nop

    nop

    goto/32 :goto_177

    nop

    nop

    nop

    nop

    nop

    :goto_205
    iget-object v12, v10, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_17a

    nop

    nop

    nop

    :goto_206
    if-ltz v10, :cond_27

    nop

    nop

    nop

    nop

    goto/32 :goto_e7

    nop

    :cond_27
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_207
    iget-object v12, v10, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_208
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_117

    nop

    nop

    nop

    nop

    nop

    :goto_209
    mul-float/2addr v0, v2

    nop

    goto/32 :goto_1a0

    nop

    nop

    :goto_20a
    iget-object v6, v8, Llsc;->o:Landroid/graphics/Rect;

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    :goto_20b
    sget-object v11, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACES:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20c
    goto/16 :goto_164

    nop

    nop

    nop

    nop

    nop

    :goto_20d
    goto/32 :goto_1d8

    nop

    nop

    nop

    :goto_20e
    if-lt v3, v0, :cond_28

    nop

    nop

    goto/32 :goto_159

    nop

    :cond_28
    goto/32 :goto_1bb

    nop

    nop

    nop

    :goto_20f
    invoke-virtual {v3}, Ltkg;->C()Z

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_200

    nop

    nop

    :goto_210
    iget v14, v6, Lnav;->h:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop
.end method
