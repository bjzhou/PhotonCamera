.class public final synthetic Lipv;
.super Ljava/lang/Object;

# interfaces
.implements Ljon;


# instance fields
.field public final synthetic a:Lipw;

.field public final synthetic b:Lnph;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lipw;Lnph;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lipv;->a:Lipw;

    iput-object p2, p0, Lipv;->b:Lnph;

    iput-object p3, p0, Lipv;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Ljot;)V
    .locals 5

    iget-object v0, p0, Lipv;->a:Lipw;

    iget-object v1, p0, Lipv;->b:Lnph;

    iget-object v2, p0, Lipv;->c:Ljava/lang/String;

    :try_start_0
    invoke-virtual {p1}, Ljot;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {v1, p1}, Lnph;->e(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljos; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object v0, v0, Lipw;->b:Lkaq;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendMessage() - Message:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " sent fail with exception "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Lkaq;->j(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    invoke-virtual {v1, p1}, Lnph;->e(Ljava/lang/Object;)Z

    return-void
.end method
