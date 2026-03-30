.class public final synthetic Ltie;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lpvn;


# instance fields
.field public final synthetic a:Lcom/google/lens/sdk/LensApi;

.field public final synthetic b:Ltii;

.field public final synthetic c:J

.field public final synthetic d:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Lcom/google/lens/sdk/LensApi;Ltii;JLandroid/app/Activity;)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p5, p0, Ltie;->d:Landroid/app/Activity;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    iput-object p2, p0, Ltie;->b:Ltii;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Ltie;->a:Lcom/google/lens/sdk/LensApi;

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

    :goto_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-wide p3, p0, Ltie;->c:J

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(I)V
    .locals 8

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Ltie;->a:Lcom/google/lens/sdk/LensApi;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v6, p1, Ltii;->d:Ltib;

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
    iget-object p0, p0, Ltie;->d:Landroid/app/Activity;

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
    iget-object v7, p1, Ltii;->e:Ljava/lang/Integer;

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_4
    goto/32 :goto_e

    nop

    nop

    :goto_5
    iget-object v0, p1, Ltii;->c:Ljava/lang/Long;

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

    nop

    :goto_6
    return-void

    nop

    nop

    :goto_7
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-eqz v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_0
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_9
    const/4 v0, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0, p1}, Lcom/google/lens/sdk/LensApi;->c(Ltii;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct/range {v2 .. v7}, Ltii;-><init>(Landroid/net/Uri;Landroid/graphics/Bitmap;Ljava/lang/Long;Ltib;Ljava/lang/Integer;)V

    :goto_c
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v3, p1, Ltii;->a:Landroid/net/Uri;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_10
    add-int v0, v0, v1

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

    :goto_11
    new-instance p1, Ltii;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-static {p0}, Lcom/google/lens/sdk/LensApi;->f(Landroid/app/Activity;)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const v1, 0x18

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_14
    return-void

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-object v4, p1, Ltii;->b:Landroid/graphics/Bitmap;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const v0, 0xe

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget-object p1, p0, Ltie;->b:Ltii;

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

    :goto_19
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

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

    :goto_1a
    if-eq p1, v0, :cond_1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_1b
    if-lez v0, :cond_2

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

    :cond_2
    goto/32 :goto_d

    nop

    :goto_1c
    iget-wide v0, p0, Ltie;->c:J

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_1d
    move-object v2, p1

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

    :goto_1e
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop
.end method
