.class public final Ldtq;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/util/List;

.field public final b:Ljava/util/List;

.field public c:Ldsw;

.field public final d:Ljava/util/List;

.field private final e:Lduv;


# direct methods
.method public constructor <init>(Lduv;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldtq;->a:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldtq;->b:Ljava/util/List;

    sget-object v0, Ldta;->a:Ldta;

    iput-object v0, p0, Ldtq;->c:Ldsw;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldtq;->d:Ljava/util/List;

    iput-object p1, p0, Ldtq;->e:Lduv;

    return-void
.end method


# virtual methods
.method public final a()Ldtu;
    .locals 7

    new-instance v4, Ldto;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0}, Ldto;-><init>(Ldtq;I)V

    new-instance v3, Ldtj;

    invoke-direct {v3, p0, v0}, Ldtj;-><init>(Ldtq;I)V

    new-instance v5, Ldtp;

    invoke-direct {v5, p0}, Ldtp;-><init>(Ldtq;)V

    new-instance v6, Ldtu;

    iget-object v1, p0, Ldtq;->e:Lduv;

    iget-object v2, p0, Ldtq;->c:Ldsw;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Ldtu;-><init>(Lduv;Ldsw;Ldss;Ldsu;Ldtc;)V

    return-object v6
.end method

.method public final b(Ldss;)V
    .locals 1

    iget-object v0, p0, Ldtq;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final c(Ldsu;)V
    .locals 1

    iget-object v0, p0, Ldtq;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final d(Ldtt;)V
    .locals 2

    new-instance v0, Ldtj;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Ldtj;-><init>(Ldtt;I)V

    invoke-virtual {p0, v0}, Ldtq;->b(Ldss;)V

    return-void
.end method
