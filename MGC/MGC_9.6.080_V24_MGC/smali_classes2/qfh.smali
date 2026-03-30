.class final Lqfh;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lsui;


# direct methods
.method public constructor <init>(Lsui;)V
    .locals 0

    goto/32 :goto_1

    nop

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

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lqfh;->a:Lsui;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method


# virtual methods
.method public final run()V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lqfh;->a:Lsui;

    nop

    nop

    nop

    nop

    invoke-static {p0}, Lsgj;->X(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    :try_end_0
    .catch Lsvc; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_0

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

    :catch_0
    move-exception p0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    throw p0

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Lsvc;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    invoke-static {p0}, Lqft;->a(Ljava/lang/Throwable;)Lqft;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {p0}, Lrtq;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method
