.class final Lbyp;
.super Ljava/lang/Object;

# interfaces
.implements Lbyo;


# instance fields
.field final synthetic a:Laks;

.field final synthetic b:Ldne;


# direct methods
.method public constructor <init>(Ldne;Laks;[B[B[B)V
    .locals 0

    iput-object p1, p0, Lbyp;->b:Ldne;

    iput-object p2, p0, Lbyp;->a:Laks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final g()V
    .locals 2

    iget-object v0, p0, Lbyp;->b:Ldne;

    iget-object v0, v0, Ldne;->a:Ljava/lang/Object;

    iget-object v1, p0, Lbyp;->a:Laks;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final h()V
    .locals 0

    return-void
.end method

.method public final i()V
    .locals 0

    return-void
.end method
