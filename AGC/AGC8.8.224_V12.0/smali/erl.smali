.class public final synthetic Lerl;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lert;

.field public final synthetic b:Lika;

.field public final synthetic c:Lnph;


# direct methods
.method public synthetic constructor <init>(Lert;Lika;Lnph;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lerl;->a:Lert;

    iput-object p2, p0, Lerl;->b:Lika;

    iput-object p3, p0, Lerl;->c:Lnph;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lerl;->a:Lert;

    iget-object v1, p0, Lerl;->b:Lika;

    iget-object v2, p0, Lerl;->c:Lnph;

    iget-object v3, v0, Lert;->k:Lkbc;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doSelectMode "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " disconnectSync"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v1, v0, Lert;->g:Lkbx;

    invoke-interface {v1}, Lkbx;->b()V

    iget-object v0, v0, Lert;->k:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lnph;->e(Ljava/lang/Object;)Z

    return-void
.end method
