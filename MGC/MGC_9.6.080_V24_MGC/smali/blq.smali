.class final Lblq;
.super Luci;
.source "PG"

# interfaces
.implements Luaz;


# instance fields
.field final synthetic a:Lblt;

.field final synthetic b:Lbrj;

.field final synthetic c:Lbqf;

.field final synthetic d:Lbnw;


# direct methods
.method public constructor <init>(Lblt;Lbrj;Lbqf;Lbnw;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    iput-object p3, p0, Lblq;->c:Lbqf;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lblq;->a:Lblt;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p2, p0, Lblq;->b:Lbrj;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_5
    iput-object p4, p0, Lblq;->d:Lbnw;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_6
    invoke-direct {p0, p1}, Luci;-><init>(I)V

    goto/32 :goto_1

    nop

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 9

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_1
    iget-object v4, v1, Lbrk;->a:Lbrj;

    nop

    nop

    nop

    nop

    :try_start_0
    iput-object v2, v1, Lbrk;->a:Lbrj;

    nop

    nop

    nop

    nop

    nop

    iget-object v2, v0, Lblt;->q:Lbqf;

    nop

    iget-object v5, v0, Lblt;->g:[I

    nop

    nop

    nop

    nop

    nop

    iget-object v6, v0, Lblt;->z:Lxc;

    nop

    nop

    nop

    nop

    const/4 v7, 0x0

    nop

    nop

    iput-object v7, v0, Lblt;->g:[I

    nop

    iput-object v7, v0, Lblt;->z:Lxc;

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iput-object v3, v0, Lblt;->q:Lbqf;

    nop

    nop

    nop

    iget-boolean v3, v1, Lbrk;->d:Z

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    sget-object p0, Ltyg;->a:Ltyg;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v7, 0x0

    nop

    :try_start_2
    iput-boolean v7, v1, Lbrk;->d:Z

    nop

    nop

    iget-object v7, p0, Lbnw;->a:Lbnu;

    nop

    nop

    iget-object v8, p0, Lbnw;->g:Lbos;

    nop

    nop

    iget-object p0, p0, Lbnw;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    invoke-static {v0, v7, v8, p0}, Lblt;->ag(Lblt;Lbnu;Lbos;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iput-boolean v3, v1, Lbrk;->d:Z

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iput-object v2, v0, Lblt;->q:Lbqf;

    nop

    nop

    iput-object v5, v0, Lblt;->g:[I

    nop

    nop

    iput-object v6, v0, Lblt;->z:Lxc;

    nop

    nop

    nop

    nop

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v2, p0, Lblq;->b:Lbrj;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_5
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput-object v4, v1, Lbrk;->a:Lbrj;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_9
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_8

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_c
    iget-object v0, p0, Lblq;->a:Lblt;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_d
    const v0, 0x10

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_e
    const v1, 0x12

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object p0, p0, Lblq;->d:Lbnw;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v3, p0, Lblq;->c:Lbqf;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_12
    return-object p0

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    :try_start_5
    iput-boolean v3, v1, Lbrk;->d:Z

    nop

    throw p0

    nop

    nop

    nop

    nop
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    :try_start_6
    iput-object v2, v0, Lblt;->q:Lbqf;

    nop

    nop

    nop

    nop

    nop

    iput-object v5, v0, Lblt;->g:[I

    nop

    nop

    nop

    nop

    iput-object v6, v0, Lblt;->z:Lxc;

    nop

    nop

    throw p0

    nop
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iput-object v4, v1, Lbrk;->a:Lbrj;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v1, v0, Lblt;->w:Lbrk;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop
.end method
