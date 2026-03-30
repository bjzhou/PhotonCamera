.class final Lbnl;
.super Luci;
.source "PG"

# interfaces
.implements Lubk;


# instance fields
.field final synthetic a:Lbnm;

.field final synthetic b:Luez;


# direct methods
.method public constructor <init>(Lbnm;Luez;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lbnl;->a:Lbnm;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0, p1}, Luci;-><init>(I)V

    goto/32 :goto_3

    nop

    nop

    :goto_2
    const/4 p1, 0x1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p2, p0, Lbnl;->b:Luez;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    goto/32 :goto_9

    nop

    nop

    :goto_0
    sget-object p0, Ltyg;->a:Ltyg;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lbnl;->b:Luez;

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
    monitor-enter v0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object p1, p1, Lbnm;->b:Ljava/util/List;

    nop

    nop

    nop

    invoke-interface {p1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    monitor-exit v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    iget-object v0, p1, Lbnm;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    monitor-exit v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_6
    iget-object p1, p0, Lbnl;->a:Lbnm;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_7
    return-object p0

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_8
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    check-cast p1, Ljava/lang/Throwable;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop
.end method
