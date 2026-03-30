.class public final synthetic Ljvc;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lssx;


# instance fields
.field public final synthetic a:Ljve;

.field public final synthetic b:Lmla;

.field public final synthetic c:Llxc;

.field public final synthetic d:Lrss;

.field public final synthetic e:J

.field public final synthetic f:Lmjn;


# direct methods
.method public synthetic constructor <init>(Ljve;Lmla;Llxc;Lrss;JLmjn;)V
    .locals 0

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p3, p0, Ljvc;->c:Llxc;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1
    iput-wide p5, p0, Ljvc;->e:J

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

    :goto_2
    iput-object p1, p0, Ljvc;->a:Ljve;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    :goto_4
    iput-object p2, p0, Ljvc;->b:Lmla;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p7, p0, Ljvc;->f:Lmjn;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_7
    iput-object p4, p0, Ljvc;->d:Lrss;

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lsui;
    .locals 10

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_0
    sget-object v2, Lnim;->a:Lnik;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    iget-object v6, p0, Ljvc;->d:Lrss;

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_2
    iget-object v4, p0, Ljvc;->b:Lmla;

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

    nop

    :goto_3
    sget-object v0, Ljvk;->a:Lsdb;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_4
    invoke-interface {v0, v2, p1}, Llxa;->D(Lnik;Ljava/lang/Throwable;)V

    :goto_5
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_9
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_a
    check-cast p1, Ljava/lang/RuntimeException;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_8

    nop

    nop

    :goto_c
    iget-object v3, v1, Ljve;->b:Ljvw;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_d
    const-string v2, "Error during long shot."

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_e
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_f
    if-eqz v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-interface/range {v3 .. v9}, Ljvw;->b(Lmla;Llxc;Lrss;JLmjn;)Lsui;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_11
    iget-object v0, v1, Ljve;->f:Llxa;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const/16 v3, 0xa52

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_13
    const v0, 0x1e

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_14
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v0}, Lscs;->b()Lsdo;

    move-result-object v0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-object v1, p0, Ljvc;->a:Ljve;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_17
    const v1, 0x6

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

    :goto_18
    iget-object v9, p0, Ljvc;->f:Lmjn;

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_19
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object v5, p0, Ljvc;->c:Llxc;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-static {v2, v3, v0, p1}, Lmf;->f(Ljava/lang/String;CLscz;Ljava/lang/Throwable;)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget-wide v7, p0, Ljvc;->e:J

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method
