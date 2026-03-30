.class public Llcf;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Llbv;


# static fields
.field private static final a:Lsdb;


# instance fields
.field private final b:Loyd;

.field private final c:Lpik;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sput-object v0, Llcf;->a:Lsdb;

    nop

    nop

    goto/32 :goto_1

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
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    const-string v0, "lcf"

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Loyd;Lpik;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Llcf;->b:Loyd;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

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
    iput-object p2, p0, Llcf;->c:Lpik;

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


# virtual methods
.method public final a()V
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
.end method

.method public final b()Z
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    :goto_1
    const/4 p0, 0x1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final c(Lpin;)Llbu;
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v0, Llce;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0, p1, v0}, Llcf;->d(Lpin;Z)V

    goto/32 :goto_0

    nop

    nop

    :goto_4
    invoke-direct {v0, p0, p1}, Llce;-><init>(Llcf;Lpin;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public final d(Lpin;Z)V
    .locals 4

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_0
    check-cast p0, Lscz;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1
    invoke-interface {p0, v0, p1}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0x16

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_3
    sget-object p0, Llcf;->a:Lsdb;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_5
    :try_start_0
    iget-object v0, p0, Llcf;->b:Loyd;

    nop

    nop

    nop

    invoke-interface {v0}, Loyd;->cM()Ljava/lang/Object;

    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    nop

    if-eqz p2, :cond_2

    nop

    nop

    nop

    iget-object v1, p0, Llcf;->b:Loyd;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    check-cast v1, Ljgy;

    nop

    nop

    nop

    nop

    sget-object v2, Ljgy;->a:Ljgy;

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v2}, Ljgy;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    if-eqz v1, :cond_1

    nop

    nop

    nop

    nop

    const-string v1, "Zmxhc2hfbW9kZV9rZXk"

    nop

    nop

    invoke-static {v1}, Lcom/a;->aa_mb(Ljava/lang/Object;)I

    move-result v1

    nop

    nop

    nop

    if-eqz v1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto :goto_6

    nop

    nop

    nop

    nop

    nop

    :cond_0
    const/4 v1, 0x2

    nop

    nop

    nop

    nop

    nop

    goto :goto_6

    nop

    nop

    :cond_1
    const/16 v1, 0x80

    nop

    nop

    nop

    nop

    goto :goto_6

    nop

    nop

    :cond_2
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    nop

    iget-object p0, p0, Llcf;->c:Lpik;

    nop

    nop

    nop

    nop

    nop

    invoke-static {}, Lpik;->v()Lpgc;

    move-result-object v2

    nop

    nop

    nop

    move-object v3, v2

    nop

    nop

    check-cast v3, Lphr;

    nop

    nop

    nop

    iput-object v0, v3, Lphr;->e:Ljava/lang/Integer;

    nop

    move-object v3, v2

    nop

    check-cast v3, Lphr;

    nop

    nop

    nop

    nop

    nop

    iput-object v1, v3, Lphr;->g:Ljava/lang/Integer;

    nop

    nop

    nop

    new-instance v3, Lphq;

    nop

    nop

    check-cast v2, Lphr;

    nop

    nop

    nop

    invoke-direct {v3, v2}, Lphq;-><init>(Lphr;)V

    invoke-virtual {p0, v3}, Lpik;->r(Lpgd;)V

    invoke-virtual {p1}, Lpin;->a()Lpgc;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    move-object v2, p0

    nop

    nop

    nop

    nop

    check-cast v2, Lpjp;

    nop

    iput-object v0, v2, Lpjp;->c:Ljava/lang/Integer;

    nop

    move-object v0, p0

    nop

    check-cast v0, Lpjp;

    nop

    nop

    nop

    nop

    nop

    iput-object v1, v0, Lpjp;->e:Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    check-cast p0, Lpjp;

    nop

    invoke-virtual {p0}, Lpjp;->c()Lpjq;

    move-result-object p0

    nop

    invoke-virtual {p1, p0}, Lpin;->b(Lpgd;)Lsui;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p0}, Lsui;->get()Ljava/lang/Object;
    :try_end_0
    .catch Lpfi; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_3
    goto/32 :goto_4

    nop

    :goto_8
    return-void

    nop

    nop

    :catch_0
    move-exception p0

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

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {v0, p2, v1, p1, p0}, Lfey;->d(Ljava/lang/String;Ljava/lang/Object;CLscz;Ljava/lang/Throwable;)V

    goto/32 :goto_13

    nop

    nop

    :goto_c
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_e
    sget-object p1, Llcf;->a:Lsdb;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_f
    return-void

    nop

    :goto_10
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p1}, Lscs;->b()Lsdo;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_12
    invoke-virtual {p0}, Lscs;->c()Lsdo;

    move-result-object p0

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_13
    return-void

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-nez p1, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_4
    goto/32 :goto_3

    nop

    nop

    :goto_16
    invoke-interface {p0, p1}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_17
    instance-of p1, p0, Lpfi;

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_18
    const/16 p1, 0xccd

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

    :goto_19
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_1a
    const-string v0, "Couldn\'t set the torch state to %b"

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_1b
    const/16 v1, 0xccc

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1c
    const v0, 0x3

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method
