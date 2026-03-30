.class public Lgcj;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lnbg;


# static fields
.field public static final synthetic B:I

.field private static final C:Lsdb;

.field private static final D:Lj$/time/Duration;


# instance fields
.field public final A:Lfdo;

.field private final E:Lmse;

.field private final F:Z

.field private final G:Z

.field private final H:Loyd;

.field private final I:I

.field private final J:Landroid/os/Handler;

.field private final K:Landroid/os/Handler;

.field private final L:Lprb;

.field private M:Landroid/widget/FrameLayout;

.field private N:Lcom/google/android/apps/camera/ui/eduimageview/EduImageView;

.field private O:Lcom/google/android/apps/camera/ui/eduimageview/EduImageView;

.field private P:Lcom/google/android/apps/camera/ui/eduimageview/EduImageView;

.field private Q:Lcom/google/android/apps/camera/ui/eduimageview/EduImageView;

.field private R:Lcom/google/android/apps/camera/ui/eduimageview/EduImageView;

.field private S:Landroid/widget/TextView;

.field private T:Landroid/widget/TextView;

.field private U:Landroid/widget/TextView;

.field private V:Landroid/widget/TextView;

.field private W:Lcom/google/android/material/button/MaterialButton;

.field private X:Landroid/widget/LinearLayout;

.field private Y:Landroid/widget/LinearLayout;

.field private Z:Landroid/widget/LinearLayout;

.field public a:Landroid/widget/FrameLayout;

.field private final aa:Lmyz;

.field private final ab:Lmjv;

.field public b:Landroid/view/accessibility/AccessibilityManager;

.field public final c:Z

.field public final d:Landroid/content/Context;

.field public final e:Loyd;

.field public final f:Lowu;

.field public final g:Lhvp;

.field public final h:Ldso;

.field public final i:Ldso;

.field public final j:Ldso;

.field public final k:Loyd;

.field public final l:Loyn;

.field public final m:Loyn;

.field public final n:Ltxm;

.field public o:Lcom/airbnb/lottie/LottieAnimationView;

.field public p:Landroid/widget/TextView;

.field public q:Landroid/widget/TextView;

.field public r:Lcom/google/android/material/button/MaterialButton;

.field public s:Lcom/google/android/material/button/MaterialButton;

.field public t:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public u:Lezb;

.field public v:Lezb;

.field public w:Lezb;

.field public x:Z

.field public y:J

.field public final z:Llad;


# direct methods
.method private final 132cd3b981019b59dc42653eea0b34b4m(ILandroid/widget/TextView;)Landroid/text/SpannableString;
    .locals 2

    goto/32 :goto_15

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

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

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p2

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

    :goto_4
    goto/32 :goto_11

    nop

    nop

    :goto_5
    new-instance p1, Landroid/text/SpannableString;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_6
    new-instance v0, Landroid/text/style/LeadingMarginSpan$Standard;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_7
    return-object p1

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_4

    nop

    nop

    :goto_9
    float-to-int p2, p2

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

    :goto_a
    invoke-direct {v0, v1, p2}, Landroid/text/style/LeadingMarginSpan$Standard;-><init>(II)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_b
    iget-object p0, p0, Lgcj;->d:Landroid/content/Context;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v1, 0x10

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_e
    invoke-direct {p1, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    goto/32 :goto_6

    nop

    nop

    :goto_f
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p2

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_12
    if-lez v0, :cond_0

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_10

    nop

    :goto_13
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const-string v0, "\u2022 "

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const v0, 0x1f

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p1, v0, v1, p0, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop
.end method

.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_9

    nop

    nop

    :goto_2
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_2

    nop

    :goto_4
    rem-int v0, v0, v1

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

    :goto_5
    sput-object v0, Lgcj;->C:Lsdb;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const-string v0, "gcj"

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0x14

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_a
    sput-object v0, Lgcj;->D:Lj$/time/Duration;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {v0, v1}, Lj$/time/Duration;->ofSeconds(J)Lj$/time/Duration;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_c
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_d
    const v0, 0x16

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_e
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_1

    nop

    :goto_f
    const-wide/16 v0, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop
.end method

.method public constructor <init>(Lmyz;Loyd;Lmse;Lfdo;Lhoh;Landroid/content/Context;Loyd;Lowu;Llad;Lhvp;Loyd;Lprb;Loyn;Loyn;Ltxm;Lmjv;)V
    .locals 4

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_0
    move-object/from16 v1, p14

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_1
    move-object v2, p10

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v1, v2}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object v2, v0, Lgcj;->E:Lmse;

    nop

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

    :goto_4
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_5
    iput-object v2, v0, Lgcj;->f:Lowu;

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_6
    new-instance v2, Ldso;

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_2d

    nop

    nop

    :goto_8
    goto/32 :goto_41

    nop

    nop

    :goto_9
    iput-object v1, v0, Lgcj;->J:Landroid/os/Handler;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iput-object v2, v0, Lgcj;->k:Loyd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_b
    sget-object v2, Lhlw;->c:Lhmo;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    move-object v2, p2

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

    nop

    :goto_d
    invoke-direct {v2}, Ldso;-><init>()V

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_e
    sget-object v2, Lhlw;->l:Lhmn;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iput-object v2, v0, Lgcj;->h:Ldso;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_10
    invoke-virtual {p5, v2}, Lhoh;->o(Lhmn;)Z

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_11
    iput-boolean v2, v0, Lgcj;->G:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_12
    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    goto/32 :goto_9

    nop

    nop

    :goto_13
    new-instance v1, Landroid/os/Handler;

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_14
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_16
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_17
    move-object v2, p4

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

    :goto_18
    new-instance v2, Ldso;

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_19
    iput-object v1, v0, Lgcj;->L:Lprb;

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_1a
    sget-object v2, Lhmq;->aT:Lhmn;

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_1b
    if-lez v0, :cond_0

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

    :goto_1c
    iput-object v2, v0, Lgcj;->d:Landroid/content/Context;

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {p5, v2}, Lhoh;->a(Lhmo;)Lj$/util/Optional;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1e
    iput-object v2, v0, Lgcj;->aa:Lmyz;

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

    :goto_1f
    if-eqz v1, :cond_1

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

    :cond_1
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iput-boolean v2, v0, Lgcj;->c:Z

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_22
    new-instance v1, Landroid/os/Handler;

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_23
    iput-object v2, v0, Lgcj;->A:Lfdo;

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    :goto_24
    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_25
    move-object v1, p5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    move-object v2, p8

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_27
    check-cast v1, Ljava/lang/Integer;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-direct {v2}, Ldso;-><init>()V

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_29
    iput-object v1, v0, Lgcj;->l:Loyn;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    const v0, 0x13

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    const v1, 0x19

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    return-void

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_2e
    iput-object v2, v0, Lgcj;->e:Loyd;

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    const v1, 0x7f1403c9

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_30
    iput-object v2, v0, Lgcj;->H:Loyd;

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_31
    iput-object v2, v0, Lgcj;->j:Ldso;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_32
    move-object v2, p1

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    const v1, 0x7f1403cb

    nop

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_36

    nop

    nop

    nop

    :goto_35
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

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

    :goto_36
    iput v1, v0, Lgcj;->I:I

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_37
    move-object v2, p6

    nop

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

    nop

    :goto_38
    move-object v2, p7

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_39
    invoke-virtual {p5, v2}, Lhoh;->p(Lhmn;)Z

    move-result v2

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    move-object/from16 v2, p15

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_3c
    iput-boolean v2, v0, Lgcj;->F:Z

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_3d
    iput-object v2, v0, Lgcj;->n:Ltxm;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_3e
    move-object/from16 v1, p13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_3f
    goto :goto_34

    nop

    :goto_40
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    move-object v0, p0

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_42
    new-instance v2, Ldso;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_43
    iput-object v1, v0, Lgcj;->K:Landroid/os/Handler;

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_44
    move-object v2, p3

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_45
    move-object/from16 v1, p12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_46
    invoke-direct {v2}, Ldso;-><init>()V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    iput-object v2, v0, Lgcj;->g:Lhvp;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_48
    iput-object v1, v0, Lgcj;->m:Loyn;

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_49
    move-object/from16 v1, p16

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_4a
    iput-wide v2, v0, Lgcj;->y:J

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    iput-object v1, v0, Lgcj;->ab:Lmjv;

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_4c
    invoke-virtual {p5, v2}, Lhoh;->o(Lhmn;)Z

    move-result v2

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    move-object v2, p11

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_4e
    iput-object v2, v0, Lgcj;->i:Ldso;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_4f
    const-wide/16 v2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_51
    sget-object v2, Lhlw;->k:Lhmn;

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_52
    move-object v2, p9

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_53
    iput-object v2, v0, Lgcj;->z:Llad;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_54
    add-int v0, v0, v1

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
.end method

.method public static final q(Lcom/google/android/material/button/MaterialButton;II)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    invoke-virtual {p0, p2}, Lcom/google/android/material/button/MaterialButton;->setTextColor(I)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2
    return-void

    nop

    :goto_3
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->e(Landroid/content/res/ColorStateList;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final declared-synchronized a(I)I
    .locals 4

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    float-to-int p1, v0

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_3
    mul-float/2addr v0, v3

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    return p1

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_5
    const v0, 0x1d

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_6
    const v1, 0x1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_13

    nop

    :goto_8
    const/4 p0, 0x0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_14

    nop

    nop

    :goto_a
    return p0

    nop

    :goto_b
    :try_start_0
    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_10

    nop

    nop

    :goto_c
    monitor-exit p0

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

    nop

    :goto_d
    goto :goto_b

    nop

    :catch_0
    move-exception v0

    nop

    :try_start_1
    sget-object v1, Lgcj;->C:Lsdb;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Lscs;->c()Lsdo;

    move-result-object v1

    nop

    nop

    nop

    invoke-interface {v1, v0}, Lscz;->i(Ljava/lang/Throwable;)Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    check-cast v0, Lscz;

    nop

    const/16 v1, 0xe0

    nop

    nop

    invoke-interface {v0, v1}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    check-cast v0, Lscz;

    nop

    nop

    nop

    nop

    const-string v1, "Dimension not found: %d"

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0, v1, p1}, Lscz;->t(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_17

    nop

    nop

    :goto_e
    const/high16 v3, 0x401c0000    # 2.4375f

    nop

    nop

    :goto_f
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_12
    if-nez p1, :cond_1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    monitor-enter p0

    nop

    nop

    :try_start_2
    iget-object v0, p0, Lgcj;->d:Landroid/content/Context;

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    nop

    nop

    nop

    nop

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    nop

    nop

    nop

    float-to-int v0, v0

    nop

    iget-object v1, p0, Lgcj;->d:Landroid/content/Context;

    nop

    nop

    nop

    nop

    check-cast v1, Landroid/app/Activity;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    nop

    invoke-interface {v1}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v1

    nop

    nop

    nop

    invoke-virtual {v1}, Landroid/view/WindowMetrics;->getDensity()F

    move-result v1

    nop

    nop

    int-to-float v0, v0

    nop

    nop

    nop

    nop

    nop

    div-float/2addr v0, v1

    nop

    iget-object v1, p0, Lgcj;->L:Lprb;

    nop

    nop

    nop

    nop

    nop

    iget-boolean v2, v1, Lprb;->s:Z

    nop

    nop

    nop

    nop

    const/high16 v3, 0x40100000    # 2.25f

    nop

    nop

    if-eqz v2, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_f

    nop

    nop

    nop

    nop

    :cond_2
    iget-boolean v2, v1, Lprb;->t:Z

    nop

    nop

    if-eqz v2, :cond_3

    nop

    nop

    nop

    goto/16 :goto_f

    nop

    nop

    nop

    :cond_3
    iget-boolean v2, v1, Lprb;->u:Z

    nop

    nop

    nop

    nop

    nop

    if-eqz v2, :cond_4

    nop

    nop

    nop

    const/high16 v3, 0x40280000    # 2.625f

    nop

    nop

    nop

    goto/16 :goto_f

    nop

    nop

    :cond_4
    iget-boolean p1, v1, Lprb;->v:Z

    nop
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_12

    nop

    nop

    :goto_16
    rem-int v0, v0, v1

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

    :goto_17
    monitor-exit p0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final d(Landroid/view/accessibility/AccessibilityManager;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 2

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p1}, Lj$/time/Duration;->toMillis()J

    move-result-wide v0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_3
    const/4 v1, 0x0

    nop

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

    :goto_4
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0x7

    nop

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

    nop

    :goto_8
    iget-object p0, p0, Lgcj;->J:Landroid/os/Handler;

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

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_b
    new-instance p2, Lfzj;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0x12

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_d
    const/4 p3, 0x5

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_e
    return-void

    nop

    nop

    :goto_f
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p2

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

    :goto_11
    sget-object p1, Lgcj;->D:Lj$/time/Duration;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p3

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_13
    goto/32 :goto_f

    nop

    nop

    :goto_14
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_16
    const/16 v1, 0x4000

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_18
    invoke-direct {p2, p1, v0, p3, v1}, Lfzj;-><init>(Ljava/lang/Object;Ljava/lang/Object;I[B)V

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_1a
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_14

    nop

    :cond_0
    goto/32 :goto_13

    nop
.end method

.method public final synthetic dI(Lnbh;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    return-void

    nop
.end method

.method public final synthetic dP(Lnbe;Lnbh;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop
.end method

.method public final e()V
    .locals 8

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lgcj;->J:Landroid/os/Handler;

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v3}, Ltkb;->i()Ltkg;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_2
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    :cond_0
    goto/32 :goto_38

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0}, Lmse;->h()V

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_1

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_4b

    nop

    :goto_5
    invoke-virtual {v3}, Ltkb;->o()V

    :goto_6
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0}, Lezm;->o()V

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v4}, Ltkg;->C()Z

    move-result v4

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

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

    :goto_a
    iget-object v0, p0, Lgcj;->m:Loyn;

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-wide v6, p0, Lgcj;->y:J

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v3, p0, Lgcj;->n:Ltxm;

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

    nop

    :goto_d
    sget-object v4, Leza;->f:Leza;

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_e
    if-eqz v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    :cond_2
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v0, p0, Lgcj;->E:Lmse;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v0, v0, Lcom/airbnb/lottie/LottieAnimationView;->c:Lezm;

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_11
    move v0, v1

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_12
    or-int/2addr v1, v5

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_13
    return-void

    nop

    :goto_14
    goto/32 :goto_4a

    nop

    nop

    :goto_15
    iget-object v0, p0, Lgcj;->a:Landroid/widget/FrameLayout;

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_16
    const/4 v2, 0x0

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_17
    const v1, 0x9

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget-object v1, v3, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v3}, Ltkb;->o()V

    :goto_1a
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object v0, p0, Lgcj;->a:Landroid/widget/FrameLayout;

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_1c
    iget-object v1, v3, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_1d
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_1e
    invoke-virtual {v0, v1}, Lmjv;->h(Lsjz;)V

    :goto_1f
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v0}, Lezm;->i()V

    goto/32 :goto_45

    nop

    nop

    :goto_21
    invoke-static {v0, v3}, Lnzk;->al(ZLtxm;)V

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_22
    const/16 v3, 0x8

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

    nop

    nop

    :goto_23
    iget v6, v1, Lsjz;->b:I

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iget-object v4, v3, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_25
    rem-int v0, v0, v1

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

    nop

    :goto_26
    iget-object v0, v0, Lcom/airbnb/lottie/LottieAnimationView;->c:Lezm;

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

    :goto_27
    sub-long/2addr v4, v6

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_28
    iget-object v0, p0, Lgcj;->g:Lhvp;

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_29
    iget-object v3, v0, Lcom/airbnb/lottie/LottieAnimationView;->e:Ljava/util/Set;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    if-nez v0, :cond_3

    nop

    goto/32 :goto_49

    nop

    nop

    :cond_3
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_2c
    add-int v0, v0, v1

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

    :goto_2d
    const v0, 0xf

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_2e
    iget v5, v4, Lsjz;->b:I

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_30
    iget-object v4, v3, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_31
    iget-object p0, p0, Lgcj;->z:Llad;

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_32
    or-int/lit8 v6, v6, 0x2

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_33
    const/16 v5, 0x21

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_34
    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_35
    if-eqz v1, :cond_4

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

    nop

    :cond_4
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    check-cast v1, Lsjz;

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

    :goto_37
    invoke-virtual {v0}, Lhvp;->h()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_39
    if-eqz v4, :cond_5

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

    :cond_5
    goto/32 :goto_19

    nop

    nop

    :goto_3a
    move v0, v2

    nop

    :goto_3b
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_3c
    sget-object v3, Lsjz;->a:Lsjz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_3d
    iget-object v0, p0, Lgcj;->o:Lcom/airbnb/lottie/LottieAnimationView;

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_3e
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_3f
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_40
    const-class v0, Lgcj;

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    iget-object v0, p0, Lgcj;->o:Lcom/airbnb/lottie/LottieAnimationView;

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

    nop

    :goto_42
    check-cast v4, Lsjz;

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_43
    iput v6, v1, Lsjz;->b:I

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    :goto_44
    invoke-virtual {v3}, Ltkg;->m()Ltkb;

    move-result-object v3

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_45
    iget-object v0, p0, Lgcj;->ab:Lmjv;

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_46
    invoke-interface {v0, v1}, Loyn;->a(Ljava/lang/Object;)V

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_47
    invoke-virtual {p0}, Lgcj;->j()V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_48
    goto/16 :goto_3b

    nop

    nop

    :goto_49
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    goto/32 :goto_4c

    nop

    :goto_4b
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    goto/32 :goto_1b

    nop

    nop

    :goto_4d
    iput v5, v4, Lsjz;->c:I

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_4e
    check-cast v1, Lsjz;

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    invoke-virtual {p0, v0}, Llad;->k(Ljava/lang/Class;)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_50
    iget-object v0, p0, Lgcj;->a:Landroid/widget/FrameLayout;

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

    :goto_51
    iput v1, v4, Lsjz;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_52
    iput-wide v4, v1, Lsjz;->d:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_53
    invoke-virtual {v1}, Ltkg;->C()Z

    move-result v1

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop
.end method

.method public final f()V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lmyz;->a()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lgcj;->aa:Lmyz;

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
.end method

.method public final g()V
    .locals 4

    goto/32 :goto_d

    nop

    nop

    :goto_0
    invoke-direct {v0, p0, v1, v2}, Lgt;-><init>(Ljava/lang/Object;I[B)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v3, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v1, 0x3

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_4
    iget-object v1, p0, Lgcj;->aa:Lmyz;

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

    nop

    :goto_5
    iget-object p0, p0, Lgcj;->aa:Lmyz;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_6
    return-void

    nop

    :goto_7
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

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

    :goto_a
    const v2, 0x7f14015c

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

    :goto_b
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_d
    const v0, 0x7

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

    :goto_e
    if-lez v0, :cond_0

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

    :goto_f
    invoke-virtual {v1, v0, v2, v3}, Lmyz;->e(Landroid/view/View$OnClickListener;IZ)V

    goto/32 :goto_5

    nop

    nop

    :goto_10
    invoke-virtual {p0}, Lmyz;->f()V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_7

    nop

    nop

    :goto_12
    goto/32 :goto_13

    nop

    nop

    :goto_13
    new-instance v0, Lgt;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final h()V
    .locals 4

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v1, v0, v2, v3}, Lmyz;->e(Landroid/view/View$OnClickListener;IZ)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0x19

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

    nop

    :goto_4
    const v1, 0xb

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_5
    const v2, 0x7f14015c

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0}, Lmyz;->f()V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_7
    const/4 v3, 0x1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_8
    iget-object p0, p0, Lgcj;->aa:Lmyz;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_f

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    :goto_b
    const/4 v1, 0x5

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_d
    iget-object v1, p0, Lgcj;->aa:Lmyz;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_10
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

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

    :goto_12
    invoke-direct {v0, p0, v1, v2}, Lgt;-><init>(Ljava/lang/Object;I[B)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_13
    new-instance v0, Lgt;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop
.end method

.method public final i()V
    .locals 2

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, v0, Lezs;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    const v1, 0x7f13004e

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

    :goto_2
    iget-object v0, v0, Lezs;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_15

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_5
    const v1, 0x7f13004f

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    check-cast v0, Lezb;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_7
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iput-object v0, p0, Lgcj;->u:Lezb;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v1, 0x7f130050

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_d
    iget-object v0, p0, Lgcj;->d:Landroid/content/Context;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_e
    check-cast v0, Lezb;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_f
    const v1, 0xf

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

    :goto_10
    iget-object v0, v0, Lezs;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_12
    iput-object v0, p0, Lgcj;->w:Lezb;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-static {v0, v1}, Lezg;->c(Landroid/content/Context;I)Lezs;

    move-result-object v0

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

    :goto_14
    iget-object v0, p0, Lgcj;->d:Landroid/content/Context;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    check-cast v0, Lezb;

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

    nop

    :goto_16
    invoke-static {v0, v1}, Lezg;->c(Landroid/content/Context;I)Lezs;

    move-result-object v0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_17
    iget-object v0, p0, Lgcj;->d:Landroid/content/Context;

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_18
    const/4 v0, 0x1

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_19
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1b
    const v0, 0xd

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_1c
    iput-object v0, p0, Lgcj;->v:Lezb;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_1d
    iput-boolean v0, p0, Lgcj;->x:Z

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_8

    nop

    nop

    :goto_1f
    add-int v0, v0, v1

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_20
    invoke-static {v0, v1}, Lezg;->c(Landroid/content/Context;I)Lezs;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop
.end method

.method public final j()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    :goto_0
    const/4 v0, 0x0

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
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lgcj;->K:Landroid/os/Handler;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public final k(I)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    :goto_0
    if-eq p1, v0, :cond_0

    nop

    goto/32 :goto_4

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0}, Lgcj;->h()V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0}, Lgcj;->g()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop
.end method

.method public final l(I)V
    .locals 3

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lgcj;->A:Lfdo;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

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

    :goto_2
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0}, Lgfi;->b()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_5
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/16 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-interface {v0}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_9
    const/4 v1, 0x0

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

    nop

    :goto_a
    const/4 v2, 0x6

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

    nop

    nop

    :goto_b
    invoke-virtual {v0, v1}, Lfdo;->G(Ljava/lang/String;)I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v0, p0, Lgcj;->H:Loyd;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_d
    check-cast v0, Lgfi;

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

    :goto_e
    if-nez v0, :cond_0

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_1

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_13

    nop

    :goto_10
    invoke-virtual {v0, v1}, Lowu;->execute(Ljava/lang/Runnable;)V

    :goto_11
    goto/32 :goto_1

    nop

    nop

    :goto_12
    if-eqz v0, :cond_2

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_2

    nop

    :goto_14
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_15
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_16
    const v0, 0x14

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_18
    iget-object v0, p0, Lgcj;->f:Lowu;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget-boolean v0, p0, Lgcj;->F:Z

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_1a
    new-instance v1, Ldtv;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-direct {v1, p0, p1, v2}, Ldtv;-><init>(Ljava/lang/Object;II)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const v1, 0x20

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1d
    sget-object v1, Lcom/google/android/apps/camera/logging/PTc/RjdpW;->mmABgZdrwVd:Ljava/lang/String;

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
.end method

.method public final m(ILj$/time/Duration;)V
    .locals 2

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1
    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

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

    :goto_3
    const/4 v1, 0x7

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_6
    invoke-virtual {p2}, Lj$/time/Duration;->toMillis()J

    move-result-wide p1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    new-instance v0, Ldtv;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0xf

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0x4

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_d

    nop

    :goto_b
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_e
    invoke-direct {v0, p0, p1, v1}, Ldtv;-><init>(Ljava/lang/Object;II)V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_f
    iget-object p0, p0, Lgcj;->K:Landroid/os/Handler;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public final n(Lnbh;)V
    .locals 3

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const v0, 0x15

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

    :goto_1
    iget-object v0, p0, Lgcj;->f:Lowu;

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

    :goto_2
    const v1, 0x17

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Lgcj;->a:Landroid/widget/FrameLayout;

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

    nop

    nop

    :goto_4
    new-instance v1, Lfzj;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_5
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v0, v1}, Lowu;->execute(Ljava/lang/Runnable;)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_8
    const/4 v2, 0x6

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

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

    nop

    :goto_a
    if-eqz v0, :cond_0

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_11

    nop

    :goto_c
    return-void

    nop

    :goto_d
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-direct {v1, p0, p1, v2}, Lfzj;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_f
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_10

    nop

    :goto_12
    goto/32 :goto_3

    nop

    nop
.end method

.method public final o()Z
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p0}, Loyd;->cM()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, v0}, Lnbe;->equals(Ljava/lang/Object;)Z

    move-result p0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2
    sget-object v0, Lnbe;->a:Lnbe;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    check-cast p0, Lnbe;

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

    :goto_4
    iget-object p0, p0, Lgcj;->e:Loyd;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return p0

    nop

    nop

    nop
.end method

.method public final p()Z
    .locals 5

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_0
    const/4 v1, 0x1

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0, v1, v0}, Lgcj;->132cd3b981019b59dc42653eea0b34b4m(ILandroid/widget/TextView;)Landroid/text/SpannableString;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_2
    iput-object v0, p0, Lgcj;->T:Landroid/widget/TextView;

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    goto/32 :goto_89

    nop

    nop

    nop

    :goto_4
    const v3, 0x7f1401f8

    nop

    nop

    goto/32 :goto_d3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    new-instance v1, Lgt;

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    :goto_6
    check-cast v0, Lcom/google/android/apps/camera/ui/eduimageview/EduImageView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_bf

    nop

    nop

    nop

    nop

    nop

    :goto_7
    check-cast v0, Landroid/widget/LinearLayout;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ef

    nop

    nop

    nop

    nop

    :goto_8
    if-eqz v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_cd

    nop

    :cond_0
    goto/32 :goto_cc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    check-cast v0, Landroid/widget/TextView;

    nop

    goto/32 :goto_ae

    nop

    nop

    :goto_a
    invoke-direct {v1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    goto/32 :goto_f5

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_d2

    nop

    nop

    :cond_1
    goto/32 :goto_d1

    nop

    :goto_e
    iput-object v0, p0, Lgcj;->W:Lcom/google/android/material/button/MaterialButton;

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_f
    check-cast v0, Lcom/google/android/apps/camera/ui/eduimageview/EduImageView;

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    :goto_10
    iget-boolean v0, p0, Lgcj;->x:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_11
    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    :goto_12
    const v1, 0x7f0b01c7

    nop

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

    :goto_13
    const v1, 0x7f0b01c0

    nop

    goto/32 :goto_ec

    nop

    nop

    :goto_14
    invoke-virtual {v0, v2, v1}, Lcom/google/android/apps/camera/ui/eduimageview/EduImageView;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/32 :goto_aa

    nop

    nop

    nop

    :goto_15
    check-cast v0, Lnbh;

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    :goto_16
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestLayout()V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget-object v0, p0, Lgcj;->Z:Landroid/widget/LinearLayout;

    nop

    nop

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    nop

    :goto_18
    iput-object v0, p0, Lgcj;->Z:Landroid/widget/LinearLayout;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const v2, 0x7f0701d7

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    nop

    goto/32 :goto_f0

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object v2, p0, Lgcj;->Y:Landroid/widget/LinearLayout;

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v0, v2, v1}, Lcom/google/android/apps/camera/ui/eduimageview/EduImageView;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object v0, p0, Lgcj;->X:Landroid/widget/LinearLayout;

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

    :goto_20
    const v1, 0x7f0b01c8

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_21
    const/4 v3, 0x0

    nop

    nop

    goto/32 :goto_db

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iget-object v0, p0, Lgcj;->M:Landroid/widget/FrameLayout;

    nop

    nop

    goto/32 :goto_c7

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :goto_24
    invoke-static {v2}, Lnzk;->q(Landroid/view/View;)I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    :goto_25
    const v1, 0x7f1401fb

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    :goto_26
    invoke-virtual {v0}, Lgfi;->b()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_27
    iget-object v1, p0, Lgcj;->d:Landroid/content/Context;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {p0, v1}, Lgcj;->a(I)I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setWidth(I)V

    :goto_2a
    goto/32 :goto_ee

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_2c
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d7

    nop

    nop

    nop

    :goto_2d
    const v3, 0x7f1401fe

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_2e
    iget-object v0, p0, Lgcj;->b:Landroid/view/accessibility/AccessibilityManager;

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {p0, v2}, Lgcj;->a(I)I

    move-result v2

    nop

    nop

    goto/32 :goto_e7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    :goto_31
    const v1, 0x7f0b01be

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

    :goto_32
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_33
    if-nez v0, :cond_2

    nop

    goto/32 :goto_d0

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_ad

    nop

    nop

    :goto_34
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    nop

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

    :goto_35
    const v1, 0x7f0b01c2

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    :goto_36
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestLayout()V

    goto/32 :goto_e4

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    nop

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

    :goto_38
    invoke-virtual {v0, v1}, Lnbh;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b9

    nop

    nop

    :goto_39
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v4

    nop

    goto/32 :goto_e1

    nop

    nop

    :goto_3a
    invoke-static {v0}, Lnzk;->v(Landroid/view/View;)I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_3c
    invoke-interface {v0}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_f2

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    iget-object v0, p0, Lgcj;->M:Landroid/widget/FrameLayout;

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_3f
    iget-object v2, p0, Lgcj;->S:Landroid/widget/TextView;

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    if-eqz v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_41
    iget-object v2, p0, Lgcj;->M:Landroid/widget/FrameLayout;

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    :goto_42
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    goto/32 :goto_b1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_44
    if-eqz v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_f4

    nop

    nop

    :cond_4
    goto/32 :goto_f3

    nop

    nop

    :goto_45
    iget-object v0, p0, Lgcj;->k:Loyd;

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    :goto_46
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_47
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :goto_48
    check-cast v0, Landroid/widget/LinearLayout;

    nop

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

    :goto_49
    const v0, 0xf

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_4a
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    iget-object v0, p0, Lgcj;->W:Lcom/google/android/material/button/MaterialButton;

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/32 :goto_9e

    nop

    nop

    nop

    :goto_4d
    check-cast v0, Lcom/google/android/apps/camera/ui/eduimageview/EduImageView;

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    :goto_4e
    iget-object v0, p0, Lgcj;->k:Loyd;

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    iget-boolean v0, p0, Lgcj;->G:Z

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

    :goto_50
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_de

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_51
    iget-object v0, p0, Lgcj;->N:Lcom/google/android/apps/camera/ui/eduimageview/EduImageView;

    nop

    nop

    nop

    goto/32 :goto_f7

    nop

    nop

    nop

    nop

    nop

    :goto_52
    iget v2, p0, Lgcj;->I:I

    nop

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    const v1, 0x13

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    nop

    nop

    :goto_54
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/32 :goto_af

    nop

    nop

    nop

    nop

    :goto_55
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    :goto_56
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_57
    const v1, 0x7f0b01c1

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_58
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_59
    invoke-direct {p0, v1, v0}, Lgcj;->132cd3b981019b59dc42653eea0b34b4m(ILandroid/widget/TextView;)Landroid/text/SpannableString;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    iget-object v0, p0, Lgcj;->R:Lcom/google/android/apps/camera/ui/eduimageview/EduImageView;

    nop

    goto/32 :goto_66

    nop

    nop

    :goto_5b
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_5c
    iget-object v0, p0, Lgcj;->g:Lhvp;

    nop

    goto/32 :goto_d6

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    iget-object v0, p0, Lgcj;->M:Landroid/widget/FrameLayout;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_5e
    invoke-virtual {v0, v2, v1}, Lcom/google/android/apps/camera/ui/eduimageview/EduImageView;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    :goto_60
    invoke-interface {v0, v2}, Loyn;->a(Ljava/lang/Object;)V

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :goto_61
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_62
    iget-object v2, p0, Lgcj;->Z:Landroid/widget/LinearLayout;

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_63
    iget-object v0, p0, Lgcj;->m:Loyn;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_64
    iget-object v2, p0, Lgcj;->W:Lcom/google/android/material/button/MaterialButton;

    nop

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

    nop

    :goto_65
    check-cast v0, Landroid/widget/LinearLayout;

    nop

    goto/32 :goto_ce

    nop

    nop

    nop

    nop

    nop

    :goto_66
    iget-object v1, p0, Lgcj;->d:Landroid/content/Context;

    nop

    goto/32 :goto_f6

    nop

    nop

    nop

    nop

    :goto_67
    const v2, 0x7f140200

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_68
    const-string v2, "accessibility"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_69
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    iget-object v1, p0, Lgcj;->d:Landroid/content/Context;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_6b
    iget-object v0, p0, Lgcj;->X:Landroid/widget/LinearLayout;

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

    :goto_6c
    const/16 v3, 0x23

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    invoke-virtual {v0, v3, v1, v2}, Lmse;->m(IILandroid/view/View;)V

    goto/32 :goto_63

    nop

    nop

    nop

    :goto_6e
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_6f
    sget-object v1, Lnbh;->b:Lnbh;

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

    :goto_70
    check-cast v0, Landroid/widget/TextView;

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    :goto_71
    invoke-virtual {v0, v2, v1}, Lcom/google/android/apps/camera/ui/eduimageview/EduImageView;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/32 :goto_ea

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_72
    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_eb

    nop

    nop

    nop

    nop

    :goto_73
    const v3, 0x7f1401ef

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    :goto_74
    iput-object v0, p0, Lgcj;->b:Landroid/view/accessibility/AccessibilityManager;

    nop

    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    :goto_75
    rem-int v0, v0, v1

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

    :goto_76
    sget-object v1, Lnbh;->c:Lnbh;

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_77
    const/4 v2, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_78
    invoke-virtual {v0, v2, v1}, Lcom/google/android/apps/camera/ui/eduimageview/EduImageView;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/32 :goto_b3

    nop

    nop

    nop

    :goto_79
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestLayout()V

    goto/32 :goto_a3

    nop

    nop

    :goto_7a
    iget-object v0, p0, Lgcj;->A:Lfdo;

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    :goto_7b
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    invoke-virtual {p0, v0, v2, v3}, Lgcj;->d(Landroid/view/accessibility/AccessibilityManager;Landroid/widget/TextView;Landroid/widget/TextView;)V

    :goto_7d
    goto/32 :goto_cf

    nop

    nop

    :goto_7e
    invoke-interface {v0}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_7f
    const v1, 0x7f0b01bf

    nop

    nop

    nop

    nop

    goto/32 :goto_dd

    nop

    nop

    nop

    nop

    nop

    :goto_80
    iget-object v3, p0, Lgcj;->Z:Landroid/widget/LinearLayout;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_81
    const v2, 0x7f1401f3

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

    :goto_82
    iget-object v0, p0, Lgcj;->d:Landroid/content/Context;

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_83
    iget-object v3, p0, Lgcj;->T:Landroid/widget/TextView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    :goto_84
    iget-object v0, p0, Lgcj;->M:Landroid/widget/FrameLayout;

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_85
    const/4 v1, -0x1

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_86
    iput-object v0, p0, Lgcj;->V:Landroid/widget/TextView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c8

    nop

    nop

    nop

    :goto_87
    iget-object v0, p0, Lgcj;->M:Landroid/widget/FrameLayout;

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    :goto_88
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_89
    iget-object v2, p0, Lgcj;->X:Landroid/widget/LinearLayout;

    nop

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

    :goto_8a
    invoke-virtual {p0, v1}, Lgcj;->a(I)I

    move-result v1

    nop

    nop

    goto/32 :goto_fa

    nop

    nop

    nop

    nop

    :goto_8b
    iget-object v0, p0, Lgcj;->Q:Lcom/google/android/apps/camera/ui/eduimageview/EduImageView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    :goto_8c
    invoke-interface {v0}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_c3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8d
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    :goto_8e
    iget-object v0, p0, Lgcj;->M:Landroid/widget/FrameLayout;

    nop

    nop

    nop

    goto/32 :goto_be

    nop

    nop

    nop

    nop

    :goto_8f
    invoke-virtual {v0, v1}, Lfdo;->G(Ljava/lang/String;)I

    move-result v0

    nop

    goto/32 :goto_c6

    nop

    nop

    nop

    :goto_90
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    nop

    nop

    goto/32 :goto_f1

    nop

    nop

    nop

    nop

    :goto_91
    iput-object v0, p0, Lgcj;->Q:Lcom/google/android/apps/camera/ui/eduimageview/EduImageView;

    nop

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    :goto_92
    iget-object v0, p0, Lgcj;->E:Lmse;

    nop

    goto/32 :goto_85

    nop

    nop

    :goto_93
    iput-object v0, p0, Lgcj;->P:Lcom/google/android/apps/camera/ui/eduimageview/EduImageView;

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    :goto_94
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/32 :goto_bd

    nop

    nop

    nop

    nop

    nop

    :goto_95
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingStart()I

    move-result v2

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    :goto_96
    const v1, 0x7f0b01c4

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_97
    iget-object v1, p0, Lgcj;->d:Landroid/content/Context;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e8

    nop

    nop

    nop

    nop

    nop

    :goto_98
    iget-object v0, p0, Lgcj;->M:Landroid/widget/FrameLayout;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_99
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_9a
    const v1, 0x7f0b01c9

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    :goto_9b
    check-cast v0, Lcom/google/android/apps/camera/ui/eduimageview/EduImageView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9c
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    :goto_9d
    invoke-static {v0, v1, v2}, Lgcj;->q(Lcom/google/android/material/button/MaterialButton;II)V

    goto/32 :goto_d8

    nop

    nop

    nop

    nop

    nop

    :goto_9e
    iget-object v0, p0, Lgcj;->Z:Landroid/widget/LinearLayout;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    :goto_9f
    invoke-virtual {p0}, Lgcj;->o()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_a0
    iget-object v0, p0, Lgcj;->M:Landroid/widget/FrameLayout;

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_a1
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_a2
    const v2, 0x7f1401ff

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    :goto_a3
    iget-object v0, p0, Lgcj;->Y:Landroid/widget/LinearLayout;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_a4
    iput-object v1, p0, Lgcj;->M:Landroid/widget/FrameLayout;

    nop

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

    :goto_a5
    const-string v1, "step_by_step_bottom_sheet_skip_instructions"

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

    :goto_a6
    iput-object v0, p0, Lgcj;->N:Lcom/google/android/apps/camera/ui/eduimageview/EduImageView;

    nop

    nop

    nop

    goto/32 :goto_ed

    nop

    nop

    :goto_a7
    iget v1, p0, Lgcj;->I:I

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

    :goto_a8
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_a9
    goto/32 :goto_bb

    nop

    nop

    :goto_aa
    iget-object v0, p0, Lgcj;->P:Lcom/google/android/apps/camera/ui/eduimageview/EduImageView;

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ab
    iput-object v0, p0, Lgcj;->R:Lcom/google/android/apps/camera/ui/eduimageview/EduImageView;

    nop

    nop

    goto/32 :goto_e0

    nop

    nop

    nop

    :goto_ac
    check-cast v0, Lcom/google/android/apps/camera/ui/eduimageview/EduImageView;

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    :goto_ad
    iget-object v0, p0, Lgcj;->H:Loyd;

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    nop

    :goto_ae
    iput-object v0, p0, Lgcj;->U:Landroid/widget/TextView;

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_af
    iget-object v0, p0, Lgcj;->Y:Landroid/widget/LinearLayout;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_b0
    const v3, 0x7f1401f6

    nop

    nop

    goto/32 :goto_ca

    nop

    nop

    nop

    nop

    nop

    :goto_b1
    invoke-virtual {p0, v1}, Lgcj;->a(I)I

    move-result v2

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

    nop

    nop

    :goto_b2
    invoke-static {v0, v2, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    goto/32 :goto_dc

    nop

    nop

    nop

    :goto_b3
    iget-object v0, p0, Lgcj;->O:Lcom/google/android/apps/camera/ui/eduimageview/EduImageView;

    nop

    nop

    goto/32 :goto_df

    nop

    nop

    :goto_b4
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    :goto_b5
    if-eqz v0, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ba

    nop

    nop

    :cond_5
    goto/32 :goto_4e

    nop

    nop

    :goto_b6
    iget-object v0, p0, Lgcj;->d:Landroid/content/Context;

    nop

    nop

    goto/32 :goto_f8

    nop

    nop

    nop

    nop

    :goto_b7
    const v3, 0x7f1401f2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_b8
    if-nez v0, :cond_6

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    :cond_6
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_b9
    if-nez v0, :cond_7

    nop

    nop

    goto/32 :goto_2a

    nop

    :cond_7
    :goto_ba
    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    :goto_bb
    goto/32 :goto_d2

    nop

    nop

    :goto_bc
    const v1, 0x7f0b01ca

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bd
    iget-object v0, p0, Lgcj;->V:Landroid/widget/TextView;

    nop

    goto/32 :goto_e2

    nop

    nop

    nop

    :goto_be
    const v1, 0x7f0b01c3

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_bf
    iput-object v0, p0, Lgcj;->O:Lcom/google/android/apps/camera/ui/eduimageview/EduImageView;

    nop

    nop

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    :goto_c0
    iget-object v0, p0, Lgcj;->Z:Landroid/widget/LinearLayout;

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_c1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/32 :goto_da

    nop

    nop

    :goto_c2
    invoke-virtual {v0, v1}, Lnbh;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c3
    check-cast v0, Lgfi;

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_c4
    const v1, 0x7f0701d2

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c5
    const v1, 0x7f0b01ce

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c6
    if-lez v0, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_d0

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_c7
    const v1, 0x7f0b01c6

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_c8
    iget-object v0, p0, Lgcj;->M:Landroid/widget/FrameLayout;

    nop

    nop

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    :goto_c9
    check-cast v0, Landroid/widget/TextView;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_ca
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_cb
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_cc
    goto/16 :goto_d0

    nop

    nop

    nop

    nop

    :goto_cd
    goto/32 :goto_d5

    nop

    nop

    nop

    :goto_ce
    iput-object v0, p0, Lgcj;->X:Landroid/widget/LinearLayout;

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    :goto_cf
    return v1

    nop

    :goto_d0
    goto/32 :goto_7b

    nop

    nop

    :goto_d1
    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    nop

    :goto_d2
    goto/32 :goto_7a

    nop

    nop

    :goto_d3
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d4
    invoke-virtual {p0, v1}, Lgcj;->a(I)I

    move-result v2

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_d5
    invoke-static {}, Lowu;->a()V

    goto/32 :goto_e6

    nop

    nop

    nop

    nop

    :goto_d6
    invoke-virtual {v0}, Lhvp;->g()V

    goto/32 :goto_82

    nop

    nop

    nop

    :goto_d7
    check-cast v0, Landroid/widget/TextView;

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

    :goto_d8
    iget-object v0, p0, Lgcj;->W:Lcom/google/android/material/button/MaterialButton;

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

    :goto_d9
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    :goto_da
    iget-object v0, p0, Lgcj;->T:Landroid/widget/TextView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_db
    invoke-direct {v1, p0, v2, v3}, Lgt;-><init>(Ljava/lang/Object;I[B)V

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_dc
    iget-object v0, p0, Lgcj;->M:Landroid/widget/FrameLayout;

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_dd
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_de
    invoke-virtual {p0, v1}, Lgcj;->a(I)I

    move-result v2

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

    :goto_df
    iget-object v1, p0, Lgcj;->d:Landroid/content/Context;

    nop

    goto/32 :goto_67

    nop

    nop

    :goto_e0
    iget-object v0, p0, Lgcj;->M:Landroid/widget/FrameLayout;

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

    :goto_e1
    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/widget/LinearLayout;->setPaddingRelative(IIII)V

    goto/32 :goto_c0

    nop

    nop

    nop

    nop

    nop

    :goto_e2
    const v1, 0x7f1401fc

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_e3
    iput-object v0, p0, Lgcj;->S:Landroid/widget/TextView;

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    :goto_e4
    iget-object v0, p0, Lgcj;->W:Lcom/google/android/material/button/MaterialButton;

    nop

    nop

    nop

    goto/32 :goto_c4

    nop

    nop

    nop

    nop

    :goto_e5
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    :goto_e6
    iget-object v0, p0, Lgcj;->d:Landroid/content/Context;

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

    nop

    :goto_e7
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_e8
    const v2, 0x7f1401f7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d9

    nop

    nop

    nop

    nop

    :goto_e9
    iget-object v0, p0, Lgcj;->M:Landroid/widget/FrameLayout;

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    :goto_ea
    iget-object v0, p0, Lgcj;->U:Landroid/widget/TextView;

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

    nop

    :goto_eb
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_ec
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    nop

    nop

    goto/32 :goto_c9

    nop

    nop

    :goto_ed
    iget-object v0, p0, Lgcj;->M:Landroid/widget/FrameLayout;

    nop

    nop

    nop

    nop

    goto/32 :goto_bc

    nop

    nop

    :goto_ee
    iget-object v0, p0, Lgcj;->S:Landroid/widget/TextView;

    nop

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    :goto_ef
    iput-object v0, p0, Lgcj;->Y:Landroid/widget/LinearLayout;

    nop

    nop

    nop

    nop

    goto/32 :goto_e9

    nop

    nop

    nop

    :goto_f0
    if-nez v0, :cond_9

    nop

    goto/32 :goto_7d

    nop

    nop

    :cond_9
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_f1
    const v1, 0x7f0701d4

    nop

    nop

    goto/32 :goto_d4

    nop

    nop

    nop

    nop

    nop

    :goto_f2
    check-cast v0, Lnbh;

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f3
    invoke-virtual {p0}, Lgcj;->i()V

    :goto_f4
    goto/32 :goto_9f

    nop

    nop

    nop

    :goto_f5
    const v3, 0x7f1401fd

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    nop

    :goto_f6
    const v2, 0x7f1401f9

    nop

    nop

    nop

    nop

    goto/32 :goto_cb

    nop

    nop

    :goto_f7
    iget-object v1, p0, Lgcj;->d:Landroid/content/Context;

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f8
    const v2, 0x7f0e0081

    nop

    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    :goto_f9
    new-instance v1, Landroid/widget/FrameLayout;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_fa
    iget-object v4, p0, Lgcj;->Z:Landroid/widget/LinearLayout;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop
.end method
