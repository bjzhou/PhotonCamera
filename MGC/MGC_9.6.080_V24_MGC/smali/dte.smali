.class public final Ldte;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field final a:Landroid/os/Bundle;

.field public final b:Z

.field c:Z

.field public d:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final e:Ljava/lang/CharSequence;

.field public final f:Landroid/app/PendingIntent;

.field public final g:[Ldsw;

.field private h:Landroidx/core/graphics/drawable/IconCompat;


# direct methods
.method public constructor <init>(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;)V
    .locals 3

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1}, Landroidx/core/graphics/drawable/IconCompat;->a()I

    move-result p1

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

    :goto_1
    const/4 v2, 0x2

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

    :goto_2
    iput-object p3, p0, Ldte;->f:Landroid/app/PendingIntent;

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

    :goto_3
    const/4 p1, 0x0

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_4
    if-eq v1, v2, :cond_0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_0
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_6
    const/4 v2, -0x1

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_7
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    :cond_1
    goto/32 :goto_1b

    nop

    :goto_8
    invoke-virtual {v1}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_a
    iget v1, p1, Landroidx/core/graphics/drawable/IconCompat;->b:I

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

    :goto_b
    iput-boolean v0, p0, Ldte;->c:Z

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_d
    iput-object p4, p0, Ldte;->a:Landroid/os/Bundle;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_e
    const v0, 0xb

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

    :goto_f
    return-void

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_11
    add-int v0, v0, v1

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

    :goto_12
    iput-boolean v0, p0, Ldte;->c:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_13
    check-cast v1, Landroid/graphics/drawable/Icon;

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

    :goto_14
    iget-object v1, p1, Landroidx/core/graphics/drawable/IconCompat;->c:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iput-object p1, p0, Ldte;->e:Ljava/lang/CharSequence;

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

    :goto_16
    iput-object p1, p0, Ldte;->h:Landroidx/core/graphics/drawable/IconCompat;

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

    :goto_17
    const v1, 0x1e

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iput p1, p0, Ldte;->d:I

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_1d
    iput-boolean v0, p0, Ldte;->b:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_1e
    if-eq v1, v2, :cond_2

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_1f
    iput-object p1, p0, Ldte;->g:[Ldsw;

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

    :goto_20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_18

    nop

    nop

    :goto_21
    invoke-static {p2}, Ldtg;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()Landroidx/core/graphics/drawable/IconCompat;
    .locals 1

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_0
    if-eqz v0, :cond_0

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
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1
    invoke-static {v0}, Landroidx/core/graphics/drawable/IconCompat;->b(I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

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

    :goto_2
    if-nez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1

    nop

    nop

    :goto_3
    return-object p0

    nop

    :goto_4
    iget-object p0, p0, Ldte;->h:Landroidx/core/graphics/drawable/IconCompat;

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

    :goto_5
    iget v0, p0, Ldte;->d:I

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
    iput-object v0, p0, Ldte;->h:Landroidx/core/graphics/drawable/IconCompat;

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_4

    nop

    nop

    :goto_8
    iget-object v0, p0, Ldte;->h:Landroidx/core/graphics/drawable/IconCompat;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method
