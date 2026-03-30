.class public final Ldsl;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Landroid/util/SparseIntArray;


# instance fields
.field public b:Z

.field public c:I

.field public d:I

.field public e:Ljava/lang/String;

.field public f:I

.field public g:I

.field public h:F

.field public i:I

.field public j:F

.field public k:F

.field public l:I

.field public m:Ljava/lang/String;

.field public n:I

.field public o:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    goto/32 :goto_b

    nop

    nop

    :goto_0
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v3, 0x6

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/16 v1, 0xa

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->append(II)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_1

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
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :cond_0
    goto/32 :goto_1b

    nop

    :goto_9
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->append(II)V

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_b
    const v0, 0x20

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const/4 v4, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_e
    const/4 v1, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_f
    const/4 v2, 0x7

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_11
    sput-object v0, Ldsl;->a:Landroid/util/SparseIntArray;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_12
    const/4 v3, 0x5

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

    :goto_13
    sget-object v1, Ldss;->a:[I

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v0, v4, v1}, Landroid/util/SparseIntArray;->append(II)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const v1, 0x1e

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_16
    const/16 v1, 0x8

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_17
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v0, v3, v4}, Landroid/util/SparseIntArray;->append(II)V

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v0, v5, v1}, Landroid/util/SparseIntArray;->append(II)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_1a
    const/4 v1, 0x4

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    new-instance v0, Landroid/util/SparseIntArray;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_1e
    invoke-virtual {v0, v3, v1}, Landroid/util/SparseIntArray;->append(II)V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1f
    const/4 v2, 0x1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v0, v1, v1}, Landroid/util/SparseIntArray;->append(II)V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_21
    const/16 v5, 0x9

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v0, v2, v5}, Landroid/util/SparseIntArray;->append(II)V

    goto/32 :goto_2

    nop

    nop
.end method

.method public constructor <init>()V
    .locals 3

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_0
    iput v1, p0, Ldsl;->l:I

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

    nop

    :goto_1
    const/4 v0, -0x3

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_2
    iput v0, p0, Ldsl;->g:I

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_3
    iput v0, p0, Ldsl;->k:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_4
    iput v1, p0, Ldsl;->c:I

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

    :goto_5
    iput v0, p0, Ldsl;->h:F

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_6
    iput-object v2, p0, Ldsl;->m:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_7
    const/high16 v0, 0x7fc00000    # Float.NaN

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_8
    iput v1, p0, Ldsl;->i:I

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

    :goto_9
    iput-boolean v0, p0, Ldsl;->b:Z

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_13

    nop

    :goto_b
    iput-object v2, p0, Ldsl;->e:Ljava/lang/String;

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_c
    const v0, 0x12

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_d
    iput v0, p0, Ldsl;->d:I

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_e
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

    :goto_f
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1a

    nop

    nop

    :goto_10
    const/4 v1, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_11
    iput v1, p0, Ldsl;->o:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_12
    iput v0, p0, Ldsl;->n:I

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

    :goto_13
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_16
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_17
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_18
    const v1, 0x2

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_19
    iput v1, p0, Ldsl;->f:I

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1a
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_1b
    return-void

    nop

    nop

    :goto_1c
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_1d
    iput v0, p0, Ldsl;->j:F

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method
