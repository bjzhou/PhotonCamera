.class public final Ljhm;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lghk;


# instance fields
.field private final a:Lghk;


# direct methods
.method public constructor <init>(Ltxm;)V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    goto :goto_2

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_5

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

    :catchall_1
    move-exception p0

    nop

    nop

    :try_start_0
    invoke-interface {v0}, Lpci;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_5
    invoke-static {}, Lhhg;->J()Lpci;

    move-result-object v0

    nop

    nop

    nop

    :try_start_1
    invoke-interface {p1}, Ltxm;->a()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    check-cast p1, Lghk;

    nop

    iput-object p1, p0, Ljhm;->a:Lghk;

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_6
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-interface {v0}, Lpci;->close()V

    goto/32 :goto_4

    nop

    nop
.end method


# virtual methods
.method public final synthetic a()I
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    nop
.end method

.method public final b()Lsui;
    .locals 1

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    :try_start_0
    invoke-interface {v0}, Lpci;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto/32 :goto_4

    nop

    nop

    :goto_3
    invoke-interface {v0}, Lpci;->close()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto :goto_1

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_5
    throw p0

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {}, Lhhg;->J()Lpci;

    move-result-object v0

    nop

    nop

    nop

    nop

    :try_start_1
    iget-object p0, p0, Ljhm;->a:Lghk;

    nop

    nop

    invoke-interface {p0}, Lghk;->b()Lsui;

    move-result-object p0

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method

.method public final c()Ljava/lang/String;
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    :goto_1
    invoke-interface {p0}, Lghk;->c()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    iget-object p0, p0, Ljhm;->a:Lghk;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method
