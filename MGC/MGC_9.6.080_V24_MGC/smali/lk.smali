.class public final Llk;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:I

.field public b:I

.field public c:Z

.field public d:Z

.field public e:Z

.field public f:[I

.field public final synthetic g:Landroid/support/v7/widget/StaggeredGridLayoutManager;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/StaggeredGridLayoutManager;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    iput-object p1, p0, Llk;->g:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Llk;->a()V

    goto/32 :goto_1

    nop

    nop
.end method


# virtual methods
.method public final a()V
    .locals 2

    goto/32 :goto_2

    nop

    nop

    :goto_0
    const/4 v0, -0x1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v1, 0x20

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

    :goto_2
    const v0, 0x4

    nop

    nop

    nop

    goto/32 :goto_1

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

    goto/32 :goto_13

    nop

    nop

    :goto_4
    goto/32 :goto_e

    nop

    :goto_5
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_6
    iput v1, p0, Llk;->b:I

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_7
    iput-boolean v1, p0, Llk;->d:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_9
    iput-boolean v1, p0, Llk;->c:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_a
    if-nez p0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :cond_1
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_b
    iput v0, p0, Llk;->a:I

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_c
    iput-boolean v1, p0, Llk;->e:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_15

    nop

    nop

    :goto_f
    const/high16 v1, -0x80000000

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_10
    invoke-static {p0, v0}, Ljava/util/Arrays;->fill([II)V

    :goto_11
    goto/32 :goto_d

    nop

    nop

    :goto_12
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

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

    :goto_14
    iget-object p0, p0, Llk;->f:[I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop
.end method
