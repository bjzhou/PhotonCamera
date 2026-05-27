.class public final synthetic Lgcn;
.super Ljava/lang/Object;

# interfaces
.implements Lmrl;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lebl;

.field public final synthetic c:Ljvk;

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(ZLebl;Ljvk;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lgcn;->a:Z

    iput-object p2, p0, Lgcn;->b:Lebl;

    iput-object p3, p0, Lgcn;->c:Ljvk;

    iput p4, p0, Lgcn;->d:I

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 4

    iget-boolean v0, p0, Lgcn;->a:Z

    iget-object v1, p0, Lgcn;->b:Lebl;

    iget-object v2, p0, Lgcn;->c:Ljvk;

    iget v3, p0, Lgcn;->d:I

    if-nez v0, :cond_0

    iget-object v0, v1, Lebl;->b:Ljvs;

    invoke-interface {v0}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, v2, Ljvk;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
