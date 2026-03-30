.class Lhux;
.super Lhuv;
.source "PG"


# instance fields
.field final synthetic a:Lhva;


# direct methods
.method public constructor <init>(Lhva;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Lhuv;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lhux;->a:Lhva;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()V
    .locals 6

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x1a

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, v0, Lhva;->a:Lcom/google/android/apps/camera/evcomp/EvCompView;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_4
    iget-object v0, p0, Lhux;->a:Lhva;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_5
    const/16 v4, 0x38d

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

    :goto_6
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

    :goto_7
    iget-object p0, p0, Lhux;->a:Lhva;

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

    :goto_8
    const/16 v1, 0x8

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0x11

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

    :goto_a
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_f

    nop

    :goto_b
    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/evcomp/EvCompView;->setVisibility(I)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const/4 v2, 0x0

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

    :goto_d
    invoke-static {v4, p0, v2}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_2

    nop

    :goto_10
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_12
    iget-object p0, p0, Lhva;->d:Lhvf;

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
.end method

.method public final b()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop
.end method

.method public d(IIF)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    iput p1, p0, Lhvf;->g:I

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1
    iget-object p0, p0, Lhux;->a:Lhva;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2
    iput p2, p0, Lhvf;->h:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_3
    iget-object p0, p0, Lhva;->d:Lhvf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    iput p3, p0, Lhvf;->i:F

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

    :goto_5
    sub-int/2addr p2, p1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop
.end method
