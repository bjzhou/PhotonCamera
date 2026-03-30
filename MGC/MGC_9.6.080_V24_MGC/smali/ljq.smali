.class public final Lljq;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lljp;


# static fields
.field private static final a:Lsdb;


# instance fields
.field private final b:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    const-string v0, "ljq"

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

    :goto_3
    sput-object v0, Lljq;->a:Lsdb;

    nop

    goto/32 :goto_2

    nop

    nop
.end method

.method public constructor <init>(Ljava/util/Set;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p1}, Lryy;->E(Ljava/util/Collection;)Lryy;

    move-result-object p1

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

    :goto_2
    iput-object p1, p0, Lljq;->b:Ljava/util/Set;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Lpge;)Z
    .locals 3

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_0
    invoke-interface {p0, v1, p1}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lscs;->c()Lsdo;

    move-result-object p0

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_2
    return p0

    nop

    nop

    nop

    nop

    :catch_0
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 p0, 0x1

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
    invoke-interface {p1}, Lpge;->b()Lpgi;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0x15

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_6
    invoke-interface {p0, v1}, Lscz;->M(I)Lsdo;

    move-result-object p0

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

    :goto_7
    check-cast p0, Lscz;

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

    :goto_8
    return v0

    nop

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

    nop

    :goto_9
    sget-object p0, Lljq;->a:Lsdb;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_d

    nop

    :goto_b
    const/16 v1, 0xedb

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_c
    const/4 v0, 0x0

    nop

    :try_start_0
    invoke-static {p1}, Lpuq;->bE(Lpge;)V

    invoke-interface {p1}, Lpge;->d()Lpro;

    move-result-object v1

    nop

    nop

    nop

    nop

    if-nez v1, :cond_2

    nop

    sget-object p0, Lljq;->a:Lsdb;

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Lscs;->c()Lsdo;

    move-result-object p0

    nop

    nop

    nop

    nop

    const/16 v1, 0xedc

    nop

    nop

    invoke-interface {p0, v1}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    nop

    check-cast p0, Lscz;

    nop

    const-string v1, "Missing metadata for frame %s."

    nop

    nop

    nop

    invoke-interface {p1}, Lpge;->b()Lpgi;

    move-result-object v2

    nop

    nop

    nop

    nop

    invoke-interface {p0, v1, v2}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    return v0

    nop

    nop

    nop

    :cond_2
    iget-object p0, p0, Lljq;->b:Ljava/util/Set;

    nop

    nop

    nop

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    nop

    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    nop

    nop

    if-eqz v2, :cond_0

    nop

    nop

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    check-cast v2, Lkon;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v2, v1}, Lkon;->a(Lpro;)Z

    move-result v2

    nop

    nop

    if-nez v2, :cond_3

    nop

    nop

    nop

    nop

    sget-object p0, Lljq;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Lscs;->c()Lsdo;

    move-result-object p0

    nop

    nop

    const/16 v1, 0xeda

    nop

    nop

    nop

    nop

    invoke-interface {p0, v1}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    check-cast p0, Lscz;

    nop

    nop

    nop

    const-string v1, "Frame rejected: %s."

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p1}, Lpge;->b()Lpgi;

    move-result-object v2

    nop

    nop

    invoke-interface {p0, v1, v2}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_8

    nop

    nop

    :goto_d
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
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

    nop

    nop

    :goto_10
    add-int v0, v0, v1

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

    :goto_11
    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_13
    return v0

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const-string v1, "Wait for metadata for frame %s got interrupted."

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_16
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

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

    :goto_17
    const v0, 0xa

    nop

    goto/32 :goto_5

    nop

    nop

    nop
.end method
