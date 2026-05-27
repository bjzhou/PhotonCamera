.class public final Lijm;
.super Ljava/lang/Object;

# interfaces
.implements Lipb;


# instance fields
.field final synthetic a:Lmrl;

.field final synthetic b:Lhrq;

.field final synthetic c:Liaw;


# direct methods
.method public constructor <init>(Liaw;Lmrl;Lhrq;)V
    .locals 0

    iput-object p1, p0, Lijm;->c:Liaw;

    iput-object p2, p0, Lijm;->a:Lmrl;

    iput-object p3, p0, Lijm;->b:Lhrq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(F)V
    .locals 3

    iget-object v0, p0, Lijm;->c:Liaw;

    iget-object v1, p0, Lijm;->a:Lmrl;

    invoke-interface {v1}, Lmrl;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhyt;

    iget-object v1, v1, Lhyt;->a:Lhys;

    iget-object v1, v1, Lhys;->i:Lhyn;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Liaw;->d(FZLhyn;)V

    return-void
.end method

.method public final b()V
    .locals 3

    iget-object v0, p0, Lijm;->c:Liaw;

    iget-object v1, p0, Lijm;->a:Lmrl;

    invoke-interface {v1}, Lmrl;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhyt;

    iget-object v1, v1, Lhyt;->a:Lhys;

    iget-object v1, v1, Lhys;->i:Lhyn;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Liaw;->b(ZLhyn;)V

    return-void
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lijm;->b:Lhrq;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lhrq;->b(Z)V

    iget-object v0, p0, Lijm;->c:Liaw;

    invoke-virtual {v0}, Liaw;->a()V

    return-void
.end method
