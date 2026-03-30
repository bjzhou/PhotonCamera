.class public final synthetic Lnck;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lnet;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iput p2, p0, Lnck;->b:I

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    :goto_3
    iput-object p1, p0, Lnck;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 2

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_0
    monitor-enter p0

    nop

    :try_start_0
    invoke-virtual {p1}, Llxp;->ordinal()I

    move-result v0

    nop

    nop

    nop

    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    if-ne v0, v1, :cond_0

    nop

    move-object p1, p0

    nop

    nop

    nop

    nop

    check-cast p1, Lncn;

    nop

    nop

    invoke-virtual {p1}, Lncn;->g()V

    monitor-exit p0

    nop

    nop

    nop

    return-void

    nop

    nop

    nop

    nop

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    nop

    const-string v1, "Unexpected Mars selection: "

    nop

    nop

    nop

    nop

    nop

    invoke-static {p1, v1}, Lmf;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    nop

    nop

    :cond_1
    move-object p1, p0

    nop

    nop

    check-cast p1, Lncn;

    nop

    iget-object p1, p1, Lncn;->i:Llyv;

    nop

    nop

    nop

    nop

    nop

    sget-object v0, Llyr;->aG:Llze;

    nop

    nop

    const/4 v1, 0x0

    nop

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    nop

    invoke-virtual {p1, v0, v1}, Llyv;->d(Llyp;Ljava/lang/Object;)V

    monitor-exit p0

    nop

    nop

    nop

    nop

    return-void

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    nop

    nop

    monitor-exit p0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1
    check-cast p1, Llxp;

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    iget-object p0, p0, Lnck;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_4
    monitor-enter v0

    nop

    nop

    :try_start_1
    invoke-virtual {p1}, Ljar;->ordinal()I

    move-result p0

    nop

    nop

    if-eq p0, v1, :cond_3

    nop

    nop

    nop

    const/4 v1, 0x2

    nop

    if-eq p0, v1, :cond_2

    nop

    nop

    nop

    nop

    const/4 v1, 0x3

    nop

    nop

    nop

    if-eq p0, v1, :cond_2

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    return-void

    nop

    nop

    nop

    :cond_2
    move-object p0, v0

    nop

    nop

    nop

    nop

    nop

    check-cast p0, Ljaa;

    nop

    invoke-virtual {p0, p1}, Ljaa;->j(Ljar;)V

    monitor-exit v0

    nop

    nop

    nop

    nop

    return-void

    nop

    nop

    nop

    nop

    :cond_3
    move-object p0, v0

    nop

    check-cast p0, Ljaa;

    nop

    nop

    nop

    invoke-virtual {p0}, Ljaa;->i()V

    monitor-exit v0

    nop

    nop

    return-void

    nop

    nop

    :catchall_1
    move-exception p0

    nop

    nop

    nop

    monitor-exit v0

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_5
    iget v0, p0, Lnck;->b:I

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_6
    if-lez v0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_7

    nop

    :goto_7
    goto/32 :goto_b

    nop

    :goto_8
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_9
    check-cast p1, Ljar;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    throw p1

    nop

    :goto_b
    goto/32 :goto_14

    nop

    nop

    :goto_c
    if-nez v0, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :cond_5
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_d
    const v0, 0x1a

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_e
    const/4 v1, 0x1

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

    :goto_f
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_10
    const v1, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v0, p0, Lnck;->a:Ljava/lang/Object;

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

    nop

    :goto_12
    throw p0

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_8

    nop
.end method
