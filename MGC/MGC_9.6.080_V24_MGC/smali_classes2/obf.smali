.class public final Lobf;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:Z

.field public b:Z

.field public final c:F

.field public d:F

.field public e:I

.field public f:Z

.field public g:Z

.field public h:J

.field public i:I

.field public final j:Lpic;

.field private final k:Landroid/view/View;

.field private final l:Landroid/os/Vibrator;

.field private final m:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 3

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v0, Lpic;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_1
    iput v0, p0, Lobf;->c:F

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    check-cast p1, Landroid/os/Vibrator;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lobf;->l:Landroid/os/Vibrator;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_11

    nop

    nop

    :goto_5
    goto/32 :goto_15

    nop

    :goto_6
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_7
    xor-int/lit8 p0, v2, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_8
    iput-boolean v2, p0, Lobf;->m:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_9
    iput-object v0, p0, Lobf;->j:Lpic;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_a
    iput v2, p0, Lobf;->d:F

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_c
    const/4 v0, 0x7

    nop

    nop

    nop

    nop

    :try_start_0
    filled-new-array {v0, v1}, [I

    move-result-object v0

    nop

    invoke-virtual {p1, v0}, Landroid/os/Vibrator;->areAllPrimitivesSupported([I)Z

    move-result p1

    nop
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_d
    move v2, v1

    nop

    nop

    nop

    :catch_0
    :goto_e
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-nez p1, :cond_0

    nop

    goto/32 :goto_e

    nop

    :cond_0
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iput-boolean v1, p0, Lobf;->b:Z

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_12
    const-string v0, "vibrator"

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_13
    if-nez p1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_16
    const v1, 0x10

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iput-object p2, p0, Lobf;->k:Landroid/view/View;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_18
    return-void

    nop

    :goto_19
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-direct {v0, p2}, Lpic;-><init>(Landroid/view/View;)V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1b
    iput-boolean v1, p0, Lobf;->a:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1c
    iput-boolean v2, p0, Lobf;->g:Z

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

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

    :goto_1e
    if-lez v0, :cond_2

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

    :cond_2
    goto/32 :goto_14

    nop

    :goto_1f
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_20
    invoke-virtual {p2, p0}, Landroid/view/View;->setHapticFeedbackEnabled(Z)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_21
    iput v1, p0, Lobf;->e:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_22
    const/4 v2, 0x0

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

    :goto_23
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledVerticalScrollFactor()F

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_24
    const v0, 0x18

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iput-boolean v1, p0, Lobf;->f:Z

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_26
    add-int v0, v0, v1

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
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-eqz v0, :cond_0

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

    nop

    :goto_1
    iget-boolean v0, p0, Lobf;->m:Z

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    invoke-virtual {p0, p1, v0}, Landroid/view/View;->performHapticFeedback(II)Z

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object p0, p0, Lobf;->k:Landroid/view/View;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_7
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method
