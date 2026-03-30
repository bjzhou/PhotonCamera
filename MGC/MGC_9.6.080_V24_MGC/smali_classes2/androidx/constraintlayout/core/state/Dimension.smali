.class public Landroidx/constraintlayout/core/state/Dimension;
.super Ljava/lang/Object;
.source "Dimension.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/core/state/Dimension$Type;
    }
.end annotation


# static fields
.field public static final FIXED_DIMENSION:Ljava/lang/Object;

.field public static final PARENT_DIMENSION:Ljava/lang/Object;

.field public static final PERCENT_DIMENSION:Ljava/lang/Object;

.field public static final RATIO_DIMENSION:Ljava/lang/Object;

.field public static final SPREAD_DIMENSION:Ljava/lang/Object;

.field public static final WRAP_DIMENSION:Ljava/lang/Object;


# instance fields
.field private final WRAP_CONTENT:I

.field mInitialValue:Ljava/lang/Object;

.field mIsSuggested:Z

.field mMax:I

.field mMin:I

.field mPercent:F

.field mRatioString:Ljava/lang/String;

.field mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_e

    nop

    nop

    :goto_0
    new-instance v0, Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    new-instance v0, Ljava/lang/Object;

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_2
    sput-object v0, Landroidx/constraintlayout/core/state/Dimension;->FIXED_DIMENSION:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    sput-object v0, Landroidx/constraintlayout/core/state/Dimension;->RATIO_DIMENSION:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_4
    new-instance v0, Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_12

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
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_7
    sput-object v0, Landroidx/constraintlayout/core/state/Dimension;->PARENT_DIMENSION:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_8
    new-instance v0, Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_9
    sput-object v0, Landroidx/constraintlayout/core/state/Dimension;->SPREAD_DIMENSION:Ljava/lang/Object;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    sput-object v0, Landroidx/constraintlayout/core/state/Dimension;->WRAP_DIMENSION:Ljava/lang/Object;

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

    :goto_b
    sput-object v0, Landroidx/constraintlayout/core/state/Dimension;->PERCENT_DIMENSION:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_c
    new-instance v0, Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_e
    new-instance v0, Ljava/lang/Object;

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

    :goto_f
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_11
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_12
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_9

    nop

    nop

    nop
.end method

.method private constructor <init>()V
    .locals 2

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x17

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_1
    iput v0, p0, Landroidx/constraintlayout/core/state/Dimension;->mMin:I

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

    nop

    :goto_2
    sget-object v1, Landroidx/constraintlayout/core/state/Dimension;->WRAP_DIMENSION:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3
    iput-object v1, p0, Landroidx/constraintlayout/core/state/Dimension;->mRatioString:Ljava/lang/String;

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

    :goto_4
    iput v0, p0, Landroidx/constraintlayout/core/state/Dimension;->mValue:I

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_5
    iput-object v1, p0, Landroidx/constraintlayout/core/state/Dimension;->mInitialValue:Ljava/lang/Object;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput v1, p0, Landroidx/constraintlayout/core/state/Dimension;->mMax:I

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_7
    const/high16 v1, 0x3f800000    # 1.0f

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_12

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_11

    nop

    :goto_c
    const/4 v0, -0x2

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const/4 v0, 0x0

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

    :goto_e
    const v1, 0xb

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_10
    iput v0, p0, Landroidx/constraintlayout/core/state/Dimension;->WRAP_CONTENT:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_9

    nop

    :goto_12
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_13
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iput-boolean v0, p0, Landroidx/constraintlayout/core/state/Dimension;->mIsSuggested:Z

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

    :goto_16
    const/4 v1, 0x0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const v1, 0x7fffffff

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iput v1, p0, Landroidx/constraintlayout/core/state/Dimension;->mPercent:F

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 2

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput v1, p0, Landroidx/constraintlayout/core/state/Dimension;->mMax:I

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_1
    const v1, 0xb

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

    :goto_2
    return-void

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput v1, p0, Landroidx/constraintlayout/core/state/Dimension;->mPercent:F

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_5
    iput-object p1, p0, Landroidx/constraintlayout/core/state/Dimension;->mInitialValue:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput v0, p0, Landroidx/constraintlayout/core/state/Dimension;->mMin:I

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_7
    iput-object v1, p0, Landroidx/constraintlayout/core/state/Dimension;->mInitialValue:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_8
    sget-object v1, Landroidx/constraintlayout/core/state/Dimension;->WRAP_DIMENSION:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_9
    iput v0, p0, Landroidx/constraintlayout/core/state/Dimension;->WRAP_CONTENT:I

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

    :goto_a
    goto/32 :goto_11

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

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_10

    nop

    :goto_c
    const/4 v0, -0x2

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_d
    iput-object v1, p0, Landroidx/constraintlayout/core/state/Dimension;->mRatioString:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_e
    const/4 v0, 0x0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_f
    const v1, 0x7fffffff

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_3

    nop

    :goto_11
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_12
    iput-boolean v0, p0, Landroidx/constraintlayout/core/state/Dimension;->mIsSuggested:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_13
    const v0, 0x19

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_14
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

    :goto_15
    iput v0, p0, Landroidx/constraintlayout/core/state/Dimension;->mValue:I

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_16
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const/high16 v1, 0x3f800000    # 1.0f

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_d

    nop

    nop
.end method

.method public static Fixed(I)Landroidx/constraintlayout/core/state/Dimension;
    .locals 2

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0, v1}, Landroidx/constraintlayout/core/state/Dimension;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1
    sget-object v1, Landroidx/constraintlayout/core/state/Dimension;->FIXED_DIMENSION:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    return-object v0

    nop

    nop

    :goto_3
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_5

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

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0x1c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

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
    invoke-virtual {v0, p0}, Landroidx/constraintlayout/core/state/Dimension;->fixed(I)Landroidx/constraintlayout/core/state/Dimension;

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_b
    new-instance v0, Landroidx/constraintlayout/core/state/Dimension;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0x1e

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop
.end method

.method public static Fixed(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/Dimension;
    .locals 2

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

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

    :goto_1
    goto/32 :goto_c

    nop

    nop

    :goto_2
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0, p0}, Landroidx/constraintlayout/core/state/Dimension;->fixed(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/Dimension;

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

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
    goto/32 :goto_2

    nop

    nop

    :goto_6
    const v1, 0x1c

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

    :goto_7
    new-instance v0, Landroidx/constraintlayout/core/state/Dimension;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

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

    :goto_9
    const v0, 0x4

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

    :goto_a
    sget-object v1, Landroidx/constraintlayout/core/state/Dimension;->FIXED_DIMENSION:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_b
    return-object v0

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-direct {v0, v1}, Landroidx/constraintlayout/core/state/Dimension;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_3

    nop

    nop

    nop
.end method

.method public static Parent()Landroidx/constraintlayout/core/state/Dimension;
    .locals 2

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_2

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
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    new-instance v0, Landroidx/constraintlayout/core/state/Dimension;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

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
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_2

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_7
    sget-object v1, Landroidx/constraintlayout/core/state/Dimension;->PARENT_DIMENSION:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_9
    invoke-direct {v0, v1}, Landroidx/constraintlayout/core/state/Dimension;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0x1f

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

    :goto_b
    add-int v0, v0, v1

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

    :goto_c
    const v0, 0x1c

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop
.end method

.method public static Percent(Ljava/lang/Object;F)Landroidx/constraintlayout/core/state/Dimension;
    .locals 2

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0, p0, p1}, Landroidx/constraintlayout/core/state/Dimension;->percent(Ljava/lang/Object;F)Landroidx/constraintlayout/core/state/Dimension;

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_1
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

    nop

    :goto_2
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_3
    const v1, 0x10

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    new-instance v0, Landroidx/constraintlayout/core/state/Dimension;

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

    :goto_5
    const v0, 0xc

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    goto/32 :goto_8

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_7
    goto/32 :goto_a

    nop

    nop

    :goto_8
    goto/32 :goto_4

    nop

    nop

    :goto_9
    return-object v0

    nop

    nop

    :goto_a
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {v0, v1}, Landroidx/constraintlayout/core/state/Dimension;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

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

    :goto_d
    sget-object v1, Landroidx/constraintlayout/core/state/Dimension;->PERCENT_DIMENSION:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop
.end method

.method public static Ratio(Ljava/lang/String;)Landroidx/constraintlayout/core/state/Dimension;
    .locals 2

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_c

    nop

    nop

    :goto_1
    goto/32 :goto_d

    nop

    nop

    :goto_2
    sget-object v1, Landroidx/constraintlayout/core/state/Dimension;->RATIO_DIMENSION:Ljava/lang/Object;

    nop

    goto/32 :goto_7

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

    nop

    :goto_4
    const v0, 0x9

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

    :goto_5
    const v1, 0xc

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
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

    nop

    nop

    nop

    :goto_7
    invoke-direct {v0, v1}, Landroidx/constraintlayout/core/state/Dimension;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v0, p0}, Landroidx/constraintlayout/core/state/Dimension;->ratio(Ljava/lang/String;)Landroidx/constraintlayout/core/state/Dimension;

    goto/32 :goto_b

    nop

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

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_b
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_d
    new-instance v0, Landroidx/constraintlayout/core/state/Dimension;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method

.method public static Spread()Landroidx/constraintlayout/core/state/Dimension;
    .locals 2

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const v0, 0x15

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    goto/32 :goto_5

    nop

    :goto_2
    invoke-direct {v0, v1}, Landroidx/constraintlayout/core/state/Dimension;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_4
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_7

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_7
    new-instance v0, Landroidx/constraintlayout/core/state/Dimension;

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

    :goto_8
    if-lez v0, :cond_0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_a
    sget-object v1, Landroidx/constraintlayout/core/state/Dimension;->SPREAD_DIMENSION:Ljava/lang/Object;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_b
    return-object v0

    nop

    nop

    :goto_c
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public static Suggested(I)Landroidx/constraintlayout/core/state/Dimension;
    .locals 1

    goto/32 :goto_2

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
    invoke-direct {v0}, Landroidx/constraintlayout/core/state/Dimension;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    new-instance v0, Landroidx/constraintlayout/core/state/Dimension;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0, p0}, Landroidx/constraintlayout/core/state/Dimension;->suggested(I)Landroidx/constraintlayout/core/state/Dimension;

    goto/32 :goto_0

    nop

    nop
.end method

.method public static Suggested(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/Dimension;
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    :goto_1
    invoke-virtual {v0, p0}, Landroidx/constraintlayout/core/state/Dimension;->suggested(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/Dimension;

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    invoke-direct {v0}, Landroidx/constraintlayout/core/state/Dimension;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    new-instance v0, Landroidx/constraintlayout/core/state/Dimension;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method public static Wrap()Landroidx/constraintlayout/core/state/Dimension;
    .locals 2

    goto/32 :goto_b

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

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_7

    nop

    nop

    :goto_3
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4
    sget-object v1, Landroidx/constraintlayout/core/state/Dimension;->WRAP_DIMENSION:Ljava/lang/Object;

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

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    goto/32 :goto_2

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_7
    new-instance v0, Landroidx/constraintlayout/core/state/Dimension;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_8
    const v1, 0x12

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_9
    return-object v0

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_3

    nop

    nop

    :goto_b
    const v0, 0x6

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_c
    invoke-direct {v0, v1}, Landroidx/constraintlayout/core/state/Dimension;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public apply(Landroidx/constraintlayout/core/state/State;Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)V
    .locals 4

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_1
    sget-object v1, Landroidx/constraintlayout/core/state/Dimension;->WRAP_DIMENSION:Ljava/lang/Object;

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    :goto_2
    if-nez v1, :cond_0

    nop

    goto/32 :goto_46

    nop

    nop

    :cond_0
    goto/32 :goto_20

    nop

    nop

    :goto_3
    const/4 v0, 0x1

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_5
    const/4 v0, 0x2

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p2, v0, v1, v2, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setVerticalMatchStyle(IIIF)V

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_8
    iget v1, p0, Landroidx/constraintlayout/core/state/Dimension;->mMin:I

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

    :goto_9
    sget-object v2, Landroidx/constraintlayout/core/state/Dimension;->PERCENT_DIMENSION:Ljava/lang/Object;

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v0, p0, Landroidx/constraintlayout/core/state/Dimension;->mInitialValue:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    :goto_b
    iget v3, p0, Landroidx/constraintlayout/core/state/Dimension;->mPercent:F

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_c
    const/4 v0, 0x2

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_e
    if-eq v0, v1, :cond_1

    nop

    goto/32 :goto_32

    nop

    :cond_1
    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v0, p0, Landroidx/constraintlayout/core/state/Dimension;->mInitialValue:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_10
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    :cond_2
    goto/32 :goto_4e

    nop

    :goto_11
    if-gtz v1, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p2, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_13
    iget v3, p0, Landroidx/constraintlayout/core/state/Dimension;->mPercent:F

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_14
    goto :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_17
    sget-object v2, Landroidx/constraintlayout/core/state/Dimension;->WRAP_DIMENSION:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p2, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setDimensionRatio(Ljava/lang/String;)V

    :goto_19
    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_1a
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

    nop

    nop

    :goto_1b
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_1c
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_1d
    invoke-virtual {p2, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setWidth(I)V

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {p2, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHeight(I)V

    :goto_1f
    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    :goto_20
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    :goto_21
    goto/16 :goto_d

    nop

    nop

    :goto_22
    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_23
    iget v0, p0, Landroidx/constraintlayout/core/state/Dimension;->mValue:I

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_24
    invoke-virtual {p2, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setMaxHeight(I)V

    :goto_25
    goto/32 :goto_f

    nop

    nop

    :goto_26
    if-lt v1, v0, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :cond_4
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_27
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

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

    :goto_28
    if-eqz v0, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    :cond_5
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    sget-object v2, Landroidx/constraintlayout/core/state/Dimension;->WRAP_DIMENSION:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    :goto_2a
    sget-object v2, Landroidx/constraintlayout/core/state/Dimension;->PERCENT_DIMENSION:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_2b
    if-gtz v1, :cond_6

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    iget v1, p0, Landroidx/constraintlayout/core/state/Dimension;->mMax:I

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    :goto_2d
    iget v2, p0, Landroidx/constraintlayout/core/state/Dimension;->mMax:I

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    goto/16 :goto_1f

    nop

    :goto_2f
    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_30
    const v1, 0x1f

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_31
    goto/16 :goto_1f

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_33
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_34
    iget-boolean v1, p0, Landroidx/constraintlayout/core/state/Dimension;->mIsSuggested:Z

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    :goto_35
    invoke-virtual {p2, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    goto/32 :goto_23

    nop

    nop

    :goto_36
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    :goto_37
    if-eq v0, v1, :cond_7

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_5a

    nop

    nop

    :goto_38
    iget v1, p0, Landroidx/constraintlayout/core/state/Dimension;->mMin:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :goto_39
    iget v0, p0, Landroidx/constraintlayout/core/state/Dimension;->mValue:I

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

    :goto_3a
    iget-boolean v1, p0, Landroidx/constraintlayout/core/state/Dimension;->mIsSuggested:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_3b
    invoke-virtual {p2, v0, v1, v2, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHorizontalMatchStyle(IIIF)V

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    goto/16 :goto_1f

    nop

    nop

    :goto_3d
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_3e
    goto/16 :goto_6

    nop

    nop

    :goto_3f
    goto/32 :goto_9

    nop

    nop

    :goto_40
    invoke-virtual {p2, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setMinHeight(I)V

    :goto_41
    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    goto/16 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_43
    goto/32 :goto_6d

    nop

    nop

    nop

    :goto_44
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_45
    goto/16 :goto_1f

    nop

    nop

    :goto_46
    goto/32 :goto_8

    nop

    nop

    :goto_47
    iget-object v1, p0, Landroidx/constraintlayout/core/state/Dimension;->mInitialValue:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    invoke-virtual {p2, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    goto/32 :goto_4

    nop

    nop

    :goto_49
    invoke-virtual {p2, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setMaxWidth(I)V

    :goto_4a
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    const v0, 0x7fffffff

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    if-eq v1, v2, :cond_8

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    invoke-virtual {p2, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_4e
    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_50
    iget v1, p0, Landroidx/constraintlayout/core/state/Dimension;->mMin:I

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_51
    const v0, 0xa

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    invoke-virtual {p2, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setMinWidth(I)V

    :goto_53
    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_54
    invoke-virtual {p2, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_55
    iget-object v0, p0, Landroidx/constraintlayout/core/state/Dimension;->mRatioString:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    :goto_56
    invoke-virtual {p2, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_57
    sget-object v1, Landroidx/constraintlayout/core/state/Dimension;->PARENT_DIMENSION:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_58
    if-eq v0, v1, :cond_9

    nop

    goto/32 :goto_5c

    nop

    :cond_9
    goto/32 :goto_68

    nop

    nop

    :goto_59
    if-eqz p3, :cond_a

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    :cond_a
    goto/32 :goto_3a

    nop

    nop

    :goto_5a
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    goto/16 :goto_1f

    nop

    nop

    :goto_5c
    goto/32 :goto_67

    nop

    nop

    nop

    nop

    :goto_5d
    sget-object v1, Landroidx/constraintlayout/core/state/Dimension;->WRAP_DIMENSION:Ljava/lang/Object;

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

    :goto_5e
    iget v1, p0, Landroidx/constraintlayout/core/state/Dimension;->mMin:I

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    iget-object v1, p0, Landroidx/constraintlayout/core/state/Dimension;->mInitialValue:Ljava/lang/Object;

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_60
    if-eq v1, v2, :cond_b

    nop

    goto/32 :goto_3f

    nop

    nop

    :cond_b
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_61
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_62
    if-lt v1, v0, :cond_c

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :cond_c
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_63
    iget v2, p0, Landroidx/constraintlayout/core/state/Dimension;->mMax:I

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_64
    iget v1, p0, Landroidx/constraintlayout/core/state/Dimension;->mMax:I

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_65
    invoke-virtual {p2, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_66
    if-nez v0, :cond_d

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_67
    sget-object v1, Landroidx/constraintlayout/core/state/Dimension;->PARENT_DIMENSION:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_68
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    :goto_69
    invoke-virtual {p2, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_6a
    if-nez v1, :cond_e

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    return-void

    nop

    nop

    nop

    nop

    :goto_6c
    goto/32 :goto_33

    nop

    nop

    nop

    :goto_6d
    if-eqz v0, :cond_f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    if-eq v1, v2, :cond_10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_10
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_6f
    if-eq v0, v1, :cond_11

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_70
    if-eq v1, v2, :cond_12

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :cond_12
    goto/32 :goto_3

    nop

    nop
.end method

.method public equalsFixedValue(I)Z
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Landroidx/constraintlayout/core/state/Dimension;->mInitialValue:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1
    return v0

    nop

    :goto_2
    goto/32 :goto_4

    nop

    nop

    :goto_3
    if-eq v0, p1, :cond_0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_5
    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_6
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_7
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget v0, p0, Landroidx/constraintlayout/core/state/Dimension;->mValue:I

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop
.end method

.method public fixed(I)Landroidx/constraintlayout/core/state/Dimension;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object v0, p0, Landroidx/constraintlayout/core/state/Dimension;->mInitialValue:Ljava/lang/Object;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput p1, p0, Landroidx/constraintlayout/core/state/Dimension;->mValue:I

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

.method public fixed(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/Dimension;
    .locals 1

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_0
    iput-object v0, p0, Landroidx/constraintlayout/core/state/Dimension;->mInitialValue:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_2
    check-cast v0, Ljava/lang/Integer;

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
    move-object v0, p1

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
    if-nez v0, :cond_0

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

    :cond_0
    goto/32 :goto_3

    nop

    nop

    :goto_5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput-object p1, p0, Landroidx/constraintlayout/core/state/Dimension;->mInitialValue:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    instance-of v0, p1, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_8
    iput v0, p0, Landroidx/constraintlayout/core/state/Dimension;->mValue:I

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_9
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_a
    return-object p0

    nop
.end method

.method getValue()I
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

    nop

    nop

    :goto_1
    iget v0, p0, Landroidx/constraintlayout/core/state/Dimension;->mValue:I

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
.end method

.method public max(I)Landroidx/constraintlayout/core/state/Dimension;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iget v0, p0, Landroidx/constraintlayout/core/state/Dimension;->mMax:I

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    if-gez v0, :cond_0

    nop

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

    nop

    nop

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop

    nop

    :goto_3
    iput p1, p0, Landroidx/constraintlayout/core/state/Dimension;->mMax:I

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method public max(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/Dimension;
    .locals 2

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0x7fffffff

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

    :goto_2
    iput v0, p0, Landroidx/constraintlayout/core/state/Dimension;->mMax:I

    nop

    nop

    :goto_3
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_4
    const v0, 0xa

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

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_7
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iput-object v0, p0, Landroidx/constraintlayout/core/state/Dimension;->mInitialValue:Ljava/lang/Object;

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

    :goto_a
    if-nez v1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_c
    sget-object v0, Landroidx/constraintlayout/core/state/Dimension;->WRAP_DIMENSION:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_d
    if-eq p1, v0, :cond_2

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_2
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_e
    return-object p0

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v1, 0x10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_11
    iget-boolean v1, p0, Landroidx/constraintlayout/core/state/Dimension;->mIsSuggested:Z

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
.end method

.method public min(I)Landroidx/constraintlayout/core/state/Dimension;
    .locals 0

    goto/32 :goto_3

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
    iput p1, p0, Landroidx/constraintlayout/core/state/Dimension;->mMin:I

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    if-gez p1, :cond_0

    nop

    nop

    goto/32 :goto_2

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
.end method

.method public min(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/Dimension;
    .locals 1

    goto/32 :goto_5

    nop

    nop

    :goto_0
    const/4 v0, -0x2

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

    :goto_1
    if-eq p1, v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop

    nop

    nop

    :goto_3
    iput v0, p0, Landroidx/constraintlayout/core/state/Dimension;->mMin:I

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_2

    nop

    nop

    :goto_5
    sget-object v0, Landroidx/constraintlayout/core/state/Dimension;->WRAP_DIMENSION:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public percent(Ljava/lang/Object;F)Landroidx/constraintlayout/core/state/Dimension;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput p2, p0, Landroidx/constraintlayout/core/state/Dimension;->mPercent:F

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop
.end method

.method public ratio(Ljava/lang/String;)Landroidx/constraintlayout/core/state/Dimension;
    .locals 0

    goto/32 :goto_1

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
    iput-object p1, p0, Landroidx/constraintlayout/core/state/Dimension;->mRatioString:Ljava/lang/String;

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
.end method

.method setValue(I)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1
    const/4 v0, 0x0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    :goto_3
    iput p1, p0, Landroidx/constraintlayout/core/state/Dimension;->mValue:I

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4
    iput-boolean v0, p0, Landroidx/constraintlayout/core/state/Dimension;->mIsSuggested:Z

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

    :goto_5
    iput-object v0, p0, Landroidx/constraintlayout/core/state/Dimension;->mInitialValue:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method

.method public suggested(I)Landroidx/constraintlayout/core/state/Dimension;
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput p1, p0, Landroidx/constraintlayout/core/state/Dimension;->mMax:I

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_2

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop

    :goto_3
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4
    iput-boolean v0, p0, Landroidx/constraintlayout/core/state/Dimension;->mIsSuggested:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_5
    if-gez p1, :cond_0

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop
.end method

.method public suggested(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/Dimension;
    .locals 1

    goto/32 :goto_2

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

    nop

    :goto_1
    iput-boolean v0, p0, Landroidx/constraintlayout/core/state/Dimension;->mIsSuggested:Z

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Landroidx/constraintlayout/core/state/Dimension;->mInitialValue:Ljava/lang/Object;

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

    :goto_3
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method
