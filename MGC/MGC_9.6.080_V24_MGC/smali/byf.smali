.class final Lbyf;
.super Luci;
.source "PG"

# interfaces
.implements Lubk;


# instance fields
.field final synthetic a:Lubk;


# direct methods
.method public constructor <init>(Lubk;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    const/4 p1, 0x1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    invoke-direct {p0, p1}, Luci;-><init>(I)V

    goto/32 :goto_1

    nop

    nop

    :goto_3
    iput-object p1, p0, Lbyf;->a:Lubk;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_1
    monitor-exit p1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    monitor-enter p1

    nop

    nop

    :try_start_0
    sget-object v0, Lbyg;->d:Lbxz;

    nop

    nop

    invoke-virtual {p0}, Lbxt;->v()I

    move-result v1

    nop

    nop

    const/4 v2, 0x1

    nop

    new-array v2, v2, [Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    nop

    nop

    const/4 v5, 0x0

    nop

    nop

    aput-object v3, v2, v5

    nop

    nop

    nop

    const/16 v4, 0x358

    nop

    nop

    nop

    invoke-static {v4, v0, v2}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    check-cast v0, Lbxz;

    nop

    nop

    nop

    nop

    nop

    sput-object v0, Lbyg;->d:Lbxz;

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_10

    nop

    :goto_4
    sget-object p1, Lbyg;->c:Ljava/lang/Object;

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

    :goto_5
    const v1, 0x14

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_6
    throw p0

    nop

    nop

    :goto_7
    goto/32 :goto_e

    nop

    nop

    :goto_8
    monitor-exit p1

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

    :goto_9
    invoke-interface {p0, p1}, Lubk;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_a
    check-cast p1, Lbxz;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_c
    check-cast p0, Lbxt;

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

    nop

    :goto_d
    const v0, 0x1e

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_11

    nop

    nop

    :goto_f
    iget-object p0, p0, Lbyf;->a:Lubk;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_f

    nop

    nop

    :goto_12
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop
.end method
