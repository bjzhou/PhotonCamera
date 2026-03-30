.class public final Ljxr;
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

    :goto_0
    return-void

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop
.end method


# virtual methods
.method public final a(Ljava/io/FileOutputStream;ILsui;Lrss;Ljava/util/concurrent/Executor;)Lqem;
    .locals 2

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_6

    nop

    :goto_1
    :try_start_0
    new-instance p0, Lqar;

    nop

    nop

    nop

    new-instance v0, Leeb;

    nop

    nop

    nop

    nop

    invoke-direct {v0, p1}, Leeb;-><init>(Ljava/io/FileOutputStream;)V

    const/4 v1, 0x0

    nop

    iput v1, v0, Leeb;->a:I

    nop

    nop

    nop

    new-instance v1, Landroidx/media3/muxer/NativeAnnexBToAvccConverter;

    nop

    invoke-direct {v1}, Landroidx/media3/muxer/NativeAnnexBToAvccConverter;-><init>()V

    iput-object v1, v0, Leeb;->b:Ledx;

    nop

    nop

    invoke-virtual {v0}, Leeb;->b()V

    invoke-virtual {v0}, Leeb;->a()V

    invoke-virtual {v0}, Leeb;->c()Lhwy;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    invoke-direct {p0, v0}, Lqar;-><init>(Ljava/lang/Object;)V

    new-instance v0, Ledr;

    nop

    invoke-direct {v0, p2}, Ledr;-><init>(I)V

    invoke-virtual {p0, v0}, Lqar;->g(Ledi;)V

    new-instance p2, Lqdy;

    nop

    nop

    const/4 v0, 0x0

    nop

    nop

    invoke-static {v0}, Lrss;->i(Ljava/lang/Object;)Lrss;

    move-result-object v0

    nop

    nop

    invoke-direct {p2, v0, p1, p0, p5}, Lqdy;-><init>(Lrss;Ljava/io/FileOutputStream;Lqar;Ljava/util/concurrent/Executor;)V

    new-instance p0, Lpho;

    nop

    nop

    nop

    nop

    const/16 p1, 0xc

    nop

    nop

    nop

    invoke-direct {p0, p2, p3, p1}, Lpho;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    iget-object p1, p2, Lqdy;->e:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p3, p0, p1}, Lsui;->c(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    const-string p0, "com.android.manufacturer"

    nop

    nop

    nop

    nop

    nop

    move-object p1, p4

    nop

    nop

    nop

    nop

    nop

    check-cast p1, Lrsx;

    nop

    nop

    nop

    nop

    iget-object p1, p1, Lrsx;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    check-cast p1, Lmhz;

    nop

    nop

    nop

    iget-object p1, p1, Lmhz;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    check-cast p1, Ljava/lang/String;

    nop

    nop

    nop

    invoke-virtual {p2, p0, p1}, Lqdy;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "com.android.model"

    nop

    nop

    nop

    nop

    check-cast p4, Lrsx;

    nop

    iget-object p1, p4, Lrsx;->a:Ljava/lang/Object;

    nop

    check-cast p1, Lmhz;

    nop

    nop

    nop

    iget-object p1, p1, Lmhz;->b:Ljava/lang/Object;

    nop

    nop

    nop

    check-cast p1, Ljava/lang/String;

    nop

    invoke-virtual {p2, p0, p1}, Lqdy;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    new-instance p1, Lqea;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_4
    const v1, 0x11

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_5
    throw p1

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_9
    const v0, 0x1e

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_b
    invoke-direct {p1, p0}, Lqea;-><init>(Ljava/lang/Throwable;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_c
    return-object p2

    nop

    nop

    :catch_0
    move-exception p0

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
