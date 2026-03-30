.class public Llcl;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lkoj;


# static fields
.field private static final a:Lsdb;


# instance fields
.field private final b:Lsui;

.field private final c:Lrss;

.field private final d:Lrss;

.field private final e:Lfxj;

.field private final f:Lpik;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    goto/32 :goto_d

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

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

    :goto_1
    sput-object v0, Llcl;->a:Lsdb;

    nop

    nop

    goto/32 :goto_9

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

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_3
    check-cast v0, Lsdb;

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

    :goto_4
    const/16 v3, 0x1c1

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v3, 0x0

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_6
    const v1, 0x1e

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_8
    invoke-static {v3, v4, v1}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_b
    const/4 v1, 0x1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_c
    const-string v0, "lcl"

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0x11

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

    :goto_e
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_f
    new-array v1, v1, [Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_c

    nop

    nop

    :goto_12
    aput-object v0, v1, v3

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_13
    const/4 v4, 0x0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Lsui;Lpik;Lrss;Lrss;Lfxj;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    iput-object p5, p0, Llcl;->e:Lfxj;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Llcl;->b:Lsui;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p4, p0, Llcl;->d:Lrss;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_5
    iput-object p2, p0, Llcl;->f:Lpik;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput-object p3, p0, Llcl;->c:Lrss;

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
.end method


# virtual methods
.method public final a()V
    .locals 4

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const v0, 0x11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_1
    invoke-interface {v0}, Lpgo;->d()Ljava/util/Set;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Llcl;->d:Lrss;

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

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

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    :try_start_0
    invoke-interface {v0}, Lpge;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto/32 :goto_27

    nop

    nop

    :goto_5
    sget-object v0, Llcl;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_7
    invoke-static {v1, v2, v0, p0}, Lmf;->f(Ljava/lang/String;CLscz;Ljava/lang/Throwable;)V

    :goto_8
    goto/32 :goto_22

    nop

    nop

    :goto_9
    check-cast v0, Lpgo;

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v0}, Lrss;->h()Z

    move-result v0

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

    :goto_b
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_c
    const v1, 0x19

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_d
    iget-object v1, p0, Llcl;->d:Lrss;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_e
    if-nez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    :cond_1
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_f
    check-cast v1, Lphh;

    nop

    nop

    nop

    :try_start_1
    iget-object v2, p0, Llcl;->f:Lpik;

    nop

    nop

    invoke-virtual {v2, v0}, Lpik;->b(Lpgo;)Lpge;

    move-result-object v0

    nop

    nop

    nop

    nop
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    invoke-static {v0}, Lpuq;->bC(Lpge;)V

    invoke-interface {v0, v1}, Lpge;->e(Lphh;)Lprw;

    move-result-object v1

    nop

    nop

    iget-object v2, p0, Llcl;->b:Lsui;

    nop

    nop

    nop

    invoke-static {v2}, Lolx;->bl(Lsui;)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    check-cast v2, Lfxp;

    nop

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_4

    nop

    if-eqz v2, :cond_3

    nop

    new-instance v3, Llqv;

    nop

    nop

    invoke-direct {v3, v1}, Llqv;-><init>(Lprw;)V

    invoke-interface {v0}, Lpge;->d()Lpro;

    move-result-object v1

    nop

    if-eqz v1, :cond_2

    nop

    nop

    invoke-static {v1}, Lsgj;->O(Ljava/lang/Object;)Lsui;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto :goto_10

    nop

    nop

    nop

    nop

    nop

    :cond_2
    const/4 v1, 0x0

    nop

    nop

    nop

    :goto_10
    iput-object v1, v3, Llqv;->d:Lsui;

    nop

    nop

    iget-object p0, p0, Llcl;->e:Lfxj;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Lfxj;->a()Loyd;

    move-result-object p0

    nop

    nop

    nop

    nop

    invoke-interface {p0}, Loyd;->cM()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    check-cast p0, Ljava/lang/Integer;

    nop

    nop

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    nop

    nop

    nop

    nop

    invoke-static {p0}, Lpcg;->b(I)Lpcg;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    iput-object p0, v3, Llqv;->c:Lpcg;

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Llqv;->a()Llqw;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v2, p0}, Lfxp;->g(Llqw;)V

    goto :goto_11

    nop

    nop

    nop

    nop

    nop

    :cond_3
    invoke-interface {v1}, Lprw;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_4
    :goto_11
    :try_start_3
    invoke-interface {v0}, Lpge;->close()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_1a

    nop

    :goto_13
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v0, p0, Llcl;->c:Lrss;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_15
    iget-object v0, p0, Llcl;->c:Lrss;

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/16 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v1}, Lrss;->c()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_19
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_25

    nop

    nop

    :goto_1b
    invoke-virtual {v0}, Lrss;->h()Z

    move-result v0

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

    :goto_1c
    if-lez v0, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    :cond_5
    goto/32 :goto_19

    nop

    :goto_1d
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1e
    const/16 v2, 0xcdb

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_1f
    const-string v1, "Unable to retrieve frame"

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

    :goto_20
    check-cast v0, Lpgo;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_21
    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_22
    return-void

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {v1}, Lrss;->c()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_25
    iget-object v0, p0, Llcl;->c:Lrss;

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

    :goto_26
    iget-object v1, p0, Llcl;->d:Lrss;

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_27
    goto :goto_28

    nop

    :catchall_1
    move-exception v0

    nop

    nop

    :try_start_4
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_28
    throw p0

    nop

    nop

    nop

    nop

    nop
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_29
    if-eqz v0, :cond_6

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_16

    nop

    nop

    :goto_2a
    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

    nop

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

    nop
.end method
