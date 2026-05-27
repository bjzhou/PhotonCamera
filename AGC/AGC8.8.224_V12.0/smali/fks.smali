.class public final Lfks;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;

.field private final b:Loiw;


# direct methods
.method public constructor <init>(Loiw;Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfks;->a:Loiw;

    iput-object p2, p0, Lfks;->b:Loiw;

    return-void
.end method

.method public static a(Loiw;Loiw;)Lfks;
    .locals 1

    new-instance v0, Lfks;

    invoke-direct {v0, p0, p1}, Lfks;-><init>(Loiw;Loiw;)V

    return-object v0
.end method


# virtual methods
.method public final b()Ljava/util/List;
    .locals 7

    iget-object v0, p0, Lfks;->a:Loiw;

    check-cast v0, Lfjy;

    invoke-virtual {v0}, Lfjy;->a()Lfjx;

    move-result-object v0

    iget-object v1, p0, Lfks;->b:Loiw;

    check-cast v1, Ldmf;

    invoke-virtual {v1}, Ldmf;->a()Ldne;

    move-result-object v1

    const/4 v2, 0x6

    new-array v2, v2, [Lfkx;

    new-instance v3, Lfku;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lfku;-><init>(I)V

    const/4 v5, 0x0

    aput-object v3, v2, v5

    invoke-virtual {v1}, Ldne;->i()Z

    move-result v3

    if-eq v4, v3, :cond_0

    const v3, 0x3e19999a    # 0.15f

    goto :goto_0

    :cond_0
    const/high16 v3, 0x3f000000    # 0.5f

    :goto_0
    new-instance v6, Lfkt;

    invoke-direct {v6, v3}, Lfkt;-><init>(F)V

    aput-object v6, v2, v4

    new-instance v3, Lfku;

    invoke-direct {v3, v5}, Lfku;-><init>(I)V

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-virtual {v1}, Ldne;->i()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lfkr;->b:Lgsk;

    invoke-static {v0, v1}, Lfze;->e(Lfjx;Lgsk;)Lfkx;

    move-result-object v1

    goto :goto_1

    :cond_1
    sget-object v1, Lfkr;->a:Lgsk;

    invoke-static {v0, v1}, Lfze;->e(Lfjx;Lgsk;)Lfkx;

    move-result-object v1

    :goto_1
    const/4 v3, 0x3

    aput-object v1, v2, v3

    new-instance v1, Lfkw;

    invoke-direct {v1, v0}, Lfkw;-><init>(Lfjx;)V

    const/4 v0, 0x4

    aput-object v1, v2, v0

    new-instance v0, Lfku;

    invoke-direct {v0, v4}, Lfku;-><init>(I)V

    const/4 v1, 0x5

    aput-object v0, v2, v1

    invoke-static {v2}, Llyh;->E([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lfks;->b()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
