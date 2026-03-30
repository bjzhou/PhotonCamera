.class public final Ljwu;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljwa;


# direct methods
.method public constructor <init>()V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop
.end method


# virtual methods
.method public final a(Ljava/io/FileOutputStream;ILsui;Lrss;Ljava/util/concurrent/Executor;)Lqem;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance p0, Ljrq;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    new-instance p0, Lsuu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Lsuu;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/16 p4, 0x8

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    sget-object p4, Lstd;->a:Lstd;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-interface {p2}, Lqem;->b()Lsui;

    move-result-object p3

    nop

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

    :goto_6
    throw p1

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return-object p1

    nop

    nop

    nop

    nop

    nop

    :catch_0
    move-exception p0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_8
    invoke-interface {p3, p4, p1}, Lsui;->c(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    goto/32 :goto_10

    nop

    nop

    :goto_9
    new-instance p1, Ljava/lang/RuntimeException;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_a
    invoke-direct {p4, p1, p0, p3}, Ljws;-><init>(Ljava/io/FileOutputStream;Lsuu;Lsui;)V

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_b
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_c
    invoke-direct {p1, p2, p0}, Ljwt;-><init>(Lqem;Lsuu;)V

    goto/32 :goto_7

    nop

    nop

    :goto_d
    sget-object p1, Lstd;->a:Lstd;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_e
    invoke-direct {p0, p4}, Ljrq;-><init>(I)V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_f
    invoke-static {p3, p0, p4}, Lsso;->i(Lsui;Lrsk;Ljava/util/concurrent/Executor;)Lsui;

    move-result-object p0

    nop

    :try_start_0
    new-instance p3, Lqlg;

    nop

    nop

    nop

    nop

    invoke-direct {p3, p5}, Lqlg;-><init>(Ljava/util/concurrent/Executor;)V

    invoke-virtual {p1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p4

    nop

    nop

    invoke-virtual {p3, p4}, Lqlg;->c(Ljava/io/FileDescriptor;)V

    invoke-virtual {p3, p2}, Lqlg;->b(I)V

    new-instance p2, Lqkq;

    nop

    nop

    nop

    nop

    nop

    const/4 p4, 0x2

    nop

    invoke-direct {p2, p4}, Lqkq;-><init>(I)V

    iget-object p4, p3, Lqlg;->a:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    invoke-static {p0, p2, p4}, Lsso;->i(Lsui;Lrsk;Ljava/util/concurrent/Executor;)Lsui;

    move-result-object p2

    nop

    nop

    nop

    iput-object p2, p3, Lqlg;->b:Lsui;

    nop

    nop

    nop

    nop

    new-instance p2, Lqkq;

    nop

    nop

    nop

    const/4 p4, 0x3

    nop

    nop

    nop

    nop

    invoke-direct {p2, p4}, Lqkq;-><init>(I)V

    iget-object p4, p3, Lqlg;->a:Ljava/util/concurrent/Executor;

    nop

    invoke-static {p0, p2, p4}, Lsso;->i(Lsui;Lrsk;Ljava/util/concurrent/Executor;)Lsui;

    move-result-object p0

    nop

    nop

    nop

    nop

    iput-object p0, p3, Lqlg;->c:Lsui;

    nop

    nop

    nop

    const/4 p0, 0x0

    nop

    iput-boolean p0, p3, Lqlg;->d:Z

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p3}, Lqlg;->a()Lqlb;

    move-result-object p0

    nop

    nop

    nop

    new-instance p2, Lqen;

    nop

    nop

    nop

    nop

    invoke-direct {p2, p0}, Lqen;-><init>(Lqlb;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_10
    new-instance p1, Ljwt;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_11
    new-instance p4, Ljws;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop
.end method
