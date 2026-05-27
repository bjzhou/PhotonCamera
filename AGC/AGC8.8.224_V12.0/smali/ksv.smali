.class public final Lksv;
.super Ljava/lang/Object;

# interfaces
.implements Lksx;


# instance fields
.field private final a:Ljbf;

.field private final b:Lmqp;

.field private final c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Ljbf;Lmqp;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lksv;->a:Ljbf;

    iput-object p2, p0, Lksv;->b:Lmqp;

    iput-object p3, p0, Lksv;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(Loah;Lmqp;)V
    .locals 8

    if-eqz p1, :cond_14

    invoke-static {}, Lohg;->b()V

    invoke-static {}, Lohg;->b()V

    iget-object v0, p0, Lksv;->b:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_12

    sget-object v0, Lnpv;->e:Lnpv;

    invoke-virtual {v0}, Lnws;->O()Lnwn;

    move-result-object v0

    iget-object v2, v0, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_0
    iget-object v2, v0, Lnwn;->b:Lnws;

    check-cast v2, Lnpv;

    iput v1, v2, Lnpv;->b:I

    iget v3, v2, Lnpv;->a:I

    or-int/2addr v3, v1

    iput v3, v2, Lnpv;->a:I

    sget-object v2, Lnpt;->d:Lnpt;

    invoke-virtual {v2}, Lnws;->O()Lnwn;

    move-result-object v2

    sget-object v3, Lnpu;->c:Lnpu;

    invoke-virtual {v3}, Lnws;->O()Lnwn;

    move-result-object v3

    iget-object v4, p0, Lksv;->c:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v3, Lnwn;->b:Lnws;

    invoke-virtual {v5}, Lnws;->ac()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v3}, Lnwn;->p()V

    :cond_1
    iget-object v5, v3, Lnwn;->b:Lnws;

    check-cast v5, Lnpu;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v6, v5, Lnpu;->a:I

    or-int/lit8 v6, v6, 0x2

    iput v6, v5, Lnpu;->a:I

    iput-object v4, v5, Lnpu;->b:Ljava/lang/String;

    invoke-virtual {v3}, Lnwn;->i()Lnws;

    move-result-object v3

    check-cast v3, Lnpu;

    iget-object v4, v2, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_2
    iget-object v4, v2, Lnwn;->b:Lnws;

    check-cast v4, Lnpt;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v3, v4, Lnpt;->b:Lnpu;

    iget v3, v4, Lnpt;->a:I

    or-int/2addr v3, v1

    iput v3, v4, Lnpt;->a:I

    sget-object v3, Lnpw;->c:Lnpw;

    invoke-virtual {v3}, Lnws;->O()Lnwn;

    move-result-object v3

    iget-object v4, v3, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v3}, Lnwn;->p()V

    :cond_3
    iget-object v4, v3, Lnwn;->b:Lnws;

    check-cast v4, Lnpw;

    const/4 v5, 0x0

    iput v5, v4, Lnpw;->b:I

    iget v6, v4, Lnpw;->a:I

    or-int/2addr v6, v1

    iput v6, v4, Lnpw;->a:I

    invoke-virtual {v3}, Lnwn;->i()Lnws;

    move-result-object v3

    check-cast v3, Lnpw;

    iget-object v4, v2, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_4
    iget-object v4, v2, Lnwn;->b:Lnws;

    check-cast v4, Lnpt;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v3, v4, Lnpt;->c:Lnpw;

    iget v3, v4, Lnpt;->a:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v4, Lnpt;->a:I

    invoke-virtual {v2}, Lnwn;->i()Lnws;

    move-result-object v2

    check-cast v2, Lnpt;

    iget-object v3, v0, Lnwn;->b:Lnws;

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_5
    iget-object v3, v0, Lnwn;->b:Lnws;

    check-cast v3, Lnpv;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v2, v3, Lnpv;->c:Lnpt;

    iget v2, v3, Lnpv;->a:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v3, Lnpv;->a:I

    sget-object v2, Lnls;->g:Lnls;

    invoke-virtual {v2}, Lnws;->O()Lnwn;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_6
    iget-object v4, v2, Lnwn;->b:Lnws;

    check-cast v4, Lnls;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v6, v4, Lnls;->a:I

    or-int/lit8 v6, v6, 0x2

    iput v6, v4, Lnls;->a:I

    iput-object v3, v4, Lnls;->c:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_7

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_7
    iget-object v4, v2, Lnwn;->b:Lnws;

    check-cast v4, Lnls;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v6, v4, Lnls;->a:I

    or-int/lit8 v6, v6, 0x8

    iput v6, v4, Lnls;->a:I

    iput-object v3, v4, Lnls;->e:Ljava/lang/String;

    check-cast p2, Lmqt;

    iget-object p2, p2, Lmqt;->a:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Throwable;

    sget-object v3, Lnlx;->f:Lnlx;

    invoke-virtual {v3}, Lnws;->O()Lnwn;

    move-result-object v3

    invoke-static {p2, v5}, Lndd;->n(Ljava/lang/Throwable;Z)Lnwn;

    move-result-object v4

    iget-object v6, v3, Lnwn;->b:Lnws;

    invoke-virtual {v6}, Lnws;->ac()Z

    move-result v6

    if-nez v6, :cond_8

    invoke-virtual {v3}, Lnwn;->p()V

    :cond_8
    iget-object v6, v3, Lnwn;->b:Lnws;

    check-cast v6, Lnlx;

    invoke-virtual {v4}, Lnwn;->i()Lnws;

    move-result-object v4

    check-cast v4, Lnlu;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v4, v6, Lnlx;->d:Lnlu;

    iget v4, v6, Lnlx;->a:I

    or-int/2addr v4, v1

    iput v4, v6, Lnlx;->a:I

    :goto_0
    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_a

    invoke-static {p2, v5}, Lndd;->n(Ljava/lang/Throwable;Z)Lnwn;

    move-result-object v4

    iget-object v6, v3, Lnwn;->b:Lnws;

    invoke-virtual {v6}, Lnws;->ac()Z

    move-result v6

    if-nez v6, :cond_9

    invoke-virtual {v3}, Lnwn;->p()V

    :cond_9
    iget-object v6, v3, Lnwn;->b:Lnws;

    check-cast v6, Lnlx;

    invoke-virtual {v4}, Lnwn;->i()Lnws;

    move-result-object v4

    check-cast v4, Lnlu;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6}, Lnlx;->b()V

    iget-object v6, v6, Lnlx;->e:Lnxa;

    invoke-interface {v6, v4}, Lnxa;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_a
    invoke-virtual {v3}, Lnwn;->i()Lnws;

    move-result-object p2

    check-cast p2, Lnlx;

    iget-object v3, v2, Lnwn;->b:Lnws;

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_b

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_b
    iget-object v3, v2, Lnwn;->b:Lnws;

    check-cast v3, Lnls;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, v3, Lnls;->f:Lnlx;

    iget p2, v3, Lnls;->a:I

    or-int/lit16 p2, p2, 0x400

    iput p2, v3, Lnls;->a:I

    sget-object p2, Lnlr;->e:Lnlr;

    invoke-virtual {p2}, Lnws;->O()Lnwn;

    move-result-object p2

    iget-object v3, p2, Lnwn;->b:Lnws;

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_c

    invoke-virtual {p2}, Lnwn;->p()V

    :cond_c
    iget-object v3, p2, Lnwn;->b:Lnws;

    move-object v4, v3

    check-cast v4, Lnlr;

    iget v6, v4, Lnlr;->a:I

    or-int/2addr v6, v1

    iput v6, v4, Lnlr;->a:I

    const-wide/16 v6, 0x0

    iput-wide v6, v4, Lnlr;->b:J

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_d

    invoke-virtual {p2}, Lnwn;->p()V

    :cond_d
    iget-object v3, p2, Lnwn;->b:Lnws;

    move-object v4, v3

    check-cast v4, Lnlr;

    iget v6, v4, Lnlr;->a:I

    or-int/lit8 v6, v6, 0x2

    iput v6, v4, Lnlr;->a:I

    iput v5, v4, Lnlr;->c:I

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_e

    invoke-virtual {p2}, Lnwn;->p()V

    :cond_e
    iget-object v3, p2, Lnwn;->b:Lnws;

    check-cast v3, Lnlr;

    iget v4, v3, Lnlr;->a:I

    or-int/lit8 v4, v4, 0x4

    iput v4, v3, Lnlr;->a:I

    iput v5, v3, Lnlr;->d:I

    invoke-virtual {p2}, Lnwn;->i()Lnws;

    move-result-object p2

    check-cast p2, Lnlr;

    iget-object v3, v2, Lnwn;->b:Lnws;

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_f

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_f
    iget-object v3, v2, Lnwn;->b:Lnws;

    check-cast v3, Lnls;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, v3, Lnls;->b:Lnlr;

    iget p2, v3, Lnls;->a:I

    or-int/2addr p2, v1

    iput p2, v3, Lnls;->a:I

    sget-object p2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {p2}, Ljava/util/logging/Level;->intValue()I

    move-result p2

    iget-object v3, v2, Lnwn;->b:Lnws;

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_10

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_10
    iget-object v3, v2, Lnwn;->b:Lnws;

    check-cast v3, Lnls;

    iget v4, v3, Lnls;->a:I

    or-int/lit8 v4, v4, 0x4

    iput v4, v3, Lnls;->a:I

    iput p2, v3, Lnls;->d:I

    iget-object p2, v0, Lnwn;->b:Lnws;

    invoke-virtual {p2}, Lnws;->ac()Z

    move-result p2

    if-nez p2, :cond_11

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_11
    iget-object p2, v0, Lnwn;->b:Lnws;

    check-cast p2, Lnpv;

    invoke-virtual {v2}, Lnwn;->i()Lnws;

    move-result-object v2

    check-cast v2, Lnls;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v2, p2, Lnpv;->d:Lnls;

    iget v2, p2, Lnpv;->a:I

    or-int/lit8 v2, v2, 0x20

    iput v2, p2, Lnpv;->a:I

    invoke-virtual {v0}, Lnwn;->i()Lnws;

    move-result-object p2

    check-cast p2, Lnpv;

    iget-object v0, p0, Lksv;->b:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljbf;

    invoke-virtual {v0, p2}, Ljbf;->e(Lnxy;)Ljbd;

    move-result-object p2

    invoke-virtual {p2}, Ljbd;->a()Ljdl;

    :cond_12
    iget-object p2, p0, Lksv;->a:Ljbf;

    invoke-virtual {p2, p1}, Ljbf;->e(Lnxy;)Ljbd;

    move-result-object p1

    iget-object p2, p1, Ljbd;->i:Lnwp;

    iget-object v0, p2, Lnwn;->b:Lnws;

    invoke-virtual {v0}, Lnws;->ac()Z

    move-result v0

    if-nez v0, :cond_13

    invoke-virtual {p2}, Lnwn;->p()V

    :cond_13
    iget-object p2, p2, Lnwp;->b:Lnws;

    check-cast p2, Loga;

    sget-object v0, Loga;->i:Loga;

    iget v0, p2, Loga;->a:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p2, Loga;->a:I

    iput v1, p2, Loga;->d:I

    invoke-virtual {p1}, Ljbd;->a()Ljdl;

    :cond_14
    return-void
.end method
