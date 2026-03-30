.class public final Lmgn;
.super Landroid/widget/ImageButton;
.source "PG"

# interfaces
.implements Lmgm;


# static fields
.field public static final a:Landroid/graphics/ColorMatrixColorFilter;


# instance fields
.field public final b:Lj$/time/Duration;

.field public final c:Landroid/content/pm/ResolveInfo;

.field public final d:Landroid/content/pm/PackageManager;

.field public e:Z

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    goto/32 :goto_f

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

    :goto_2
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0xa

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_4
    const v0, 0x1a

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

    :goto_5
    sput-object v1, Lmgn;->a:Landroid/graphics/ColorMatrixColorFilter;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_6
    new-instance v0, Landroid/graphics/ColorMatrix;

    nop

    nop

    nop

    goto/32 :goto_a

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

    :goto_8
    const/4 v1, 0x0

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

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

    :goto_a
    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_b
    invoke-direct {v1, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_d

    nop

    :goto_f
    new-instance v1, Landroid/graphics/ColorMatrixColorFilter;

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

    :goto_10
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    .locals 1

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    iput-object p2, p0, Lmgn;->c:Landroid/content/pm/ResolveInfo;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_3
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v0, 0x0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_6
    iput p2, p0, Lmgn;->f:I

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

    :goto_7
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_8
    invoke-direct {p0, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iput-object p1, p0, Lmgn;->b:Lj$/time/Duration;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_b
    const p2, 0x7f0c00ad

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iput-object p2, p0, Lmgn;->d:Landroid/content/pm/PackageManager;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_d
    const v0, 0x7f0707eb

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

    :goto_e
    iput-boolean v0, p0, Lmgn;->e:Z

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_f
    int-to-long p1, p1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-static {p1, p2}, Lj$/time/Duration;->ofMillis(J)Lj$/time/Duration;

    move-result-object p1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop
.end method

.method public static a(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 2

    goto/32 :goto_a

    nop

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

    nop

    :goto_1
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p2, v1, p0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_6
    const v1, 0x7f14062a

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

    nop

    :goto_7
    invoke-virtual {p0, p1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

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

    :goto_8
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0x1a

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_b
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_c
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_0

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1b

    nop

    :goto_e
    invoke-virtual {v0, p1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

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

    nop

    :goto_f
    return-object p0

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const-string v0, " "

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_14
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_15
    new-instance p1, Ljava/lang/StringBuilder;

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

    :goto_16
    const v1, 0xe

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_17
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

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

    :goto_18
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_19
    rem-int v0, v0, v1

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

    nop

    :goto_1a
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_1b
    goto/32 :goto_1

    nop

    :goto_1c
    goto/32 :goto_3

    nop

    nop

    :goto_1d
    if-eqz p1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    :cond_1
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {p2, v1, p0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final b()V
    .locals 2

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput v0, p0, Lmgn;->f:I

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_1
    const/4 v0, 0x1

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
    goto/32 :goto_13

    nop

    nop

    :goto_3
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0x7f0707f3

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-boolean v0, p0, Lmgn;->e:Z

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_6
    const/4 v0, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_7
    invoke-virtual {p0, v0}, Lmgn;->setImportantForAccessibility(I)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0}, Lmgn;->requestLayout()V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_9
    const/4 v0, 0x0

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
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

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

    :goto_b
    invoke-virtual {p0, v0}, Lmgn;->setVisibility(I)V

    goto/32 :goto_6

    nop

    nop

    :goto_c
    invoke-virtual {p0}, Lmgn;->getContext()Landroid/content/Context;

    move-result-object v0

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0x14

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_f
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v1, 0x15

    nop

    nop

    nop

    goto/32 :goto_e

    nop

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
    return-void

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_11

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

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_15
    rem-int v0, v0, v1

    nop

    goto/32 :goto_14

    nop

    nop
.end method

.method public final c()V
    .locals 3

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1
    const v1, 0xc

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Lmgn;->requestLayout()V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_5
    const/4 v0, 0x1

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

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0xe

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_8
    const v2, 0x7f0707eb

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0, v0}, Lmgn;->setVisibility(I)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_b
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p0}, Lmgn;->getContext()Landroid/content/Context;

    move-result-object v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_d
    iput-boolean v0, p0, Lmgn;->e:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p0, v0}, Lmgn;->setImportantForAccessibility(I)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_f
    const/4 v0, 0x0

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

    :goto_10
    return-void

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iput v1, p0, Lmgn;->f:I

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop
.end method

.method public final d()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/16 v0, 0x8

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, v0}, Lmgn;->setVisibility(I)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop
.end method

.method protected final onMeasure(II)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, p1, p2}, Lmgn;->setMeasuredDimension(II)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    iget p2, p0, Lmgn;->f:I

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
.end method
