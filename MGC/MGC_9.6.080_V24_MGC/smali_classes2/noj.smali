.class public final Lnoj;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljpv;
.implements Ljpk;
.implements Ljoj;


# instance fields
.field public final a:Lowu;

.field public final b:Ljov;

.field public final c:Ltxm;

.field final d:Lneh;

.field public final e:Lixe;

.field private final f:Landroid/content/Context;

.field private final g:Landroid/net/ConnectivityManager$NetworkCallback;

.field private final h:Lfwv;


# direct methods
.method private final 166277962e993c138a6b1f0c9b571cc0m()V
    .locals 2

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x9

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_2
    goto/32 :goto_8

    nop

    nop

    :goto_3
    iget-object v0, p0, Lnoj;->f:Landroid/content/Context;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Lnoj;->e:Lixe;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-eq v0, v1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_13

    nop

    nop

    :goto_6
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

    :goto_7
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v1, p0, Lnoj;->d:Lneh;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_a
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_b
    invoke-static {v0}, Lnzk;->N(Landroid/content/Context;)I

    move-result v0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0x5

    nop

    nop

    nop

    goto/32 :goto_0

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

    :goto_e
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_f
    iget-object p0, p0, Lnoj;->d:Lneh;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v0, v1}, Lixe;->f(Lixf;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v0, p0}, Lixe;->a(Lixf;)Lpci;

    :goto_12
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_13
    iget-object v0, p0, Lnoj;->e:Lixe;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Lowu;Ljov;Lfwv;Lixe;Ltxm;)V
    .locals 1

    goto/32 :goto_13

    nop

    nop

    :goto_0
    new-instance p2, Lnei;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object v0, p0, Lnoj;->g:Landroid/net/ConnectivityManager$NetworkCallback;

    nop

    nop

    goto/32 :goto_c

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

    :goto_3
    iput-object p1, p2, Lnei;->g:Landroid/content/Context;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {v0, p0}, Lnoi;-><init>(Lnoj;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p2}, Lnei;->a()Lneh;

    move-result-object p1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_6
    const/4 p3, 0x2

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput-object p2, p0, Lnoj;->a:Lowu;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_8
    const/4 p3, 0x1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iput p3, p2, Lnei;->h:I

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_a
    iput-boolean p3, p2, Lnei;->a:Z

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_b
    iput-object p6, p0, Lnoj;->c:Ltxm;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_c
    iput-object p1, p0, Lnoj;->f:Landroid/content/Context;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_d
    iput-object p3, p0, Lnoj;->b:Ljov;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_e
    new-instance v0, Lnoi;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iput-object p1, p0, Lnoj;->d:Lneh;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_10
    iput-object p4, p0, Lnoj;->h:Lfwv;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_11
    iput-object p5, p0, Lnoj;->e:Lixe;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_12
    iput-object p1, p2, Lnei;->e:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

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

    :goto_15
    invoke-direct {p2}, Lnei;-><init>()V

    goto/32 :goto_3

    nop

    nop

    :goto_16
    const p3, 0x7f140101

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final k()V
    .locals 3

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v1, p0, Lnoj;->g:Landroid/net/ConnectivityManager$NetworkCallback;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v2}, Lfwv;->i()Lows;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0x1a

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_7
    iget-object v2, p0, Lnoj;->h:Lfwv;

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

    :goto_8
    iget-object v0, p0, Lnoj;->f:Landroid/content/Context;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

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

    :goto_a
    const v0, 0x14

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

    :goto_b
    invoke-direct {p0}, Lnoj;->166277962e993c138a6b1f0c9b571cc0m()V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-static {v0, v1}, Lnzk;->M(Landroid/content/Context;Landroid/net/ConnectivityManager$NetworkCallback;)Lpci;

    move-result-object v0

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

    :goto_d
    invoke-virtual {v2, v0}, Lows;->d(Lpci;)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    goto/32 :goto_9

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

    nop

    nop

    :goto_10
    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public final l(Landroid/content/Intent;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-direct {p0}, Lnoj;->166277962e993c138a6b1f0c9b571cc0m()V

    goto/32 :goto_0

    nop

    nop

    nop
.end method
