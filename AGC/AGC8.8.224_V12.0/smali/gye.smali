.class public final Lgye;
.super Lgyy;


# direct methods
.method public constructor <init>(Lgzi;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lgyy;-><init>(Lgzi;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic bn(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lgye;->a:Lgzi;

    iget-object v1, p0, Lgye;->b:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, v1, p1}, Lgzi;->l(Ljava/lang/String;Z)V

    return-void
.end method

.method protected final bridge synthetic c()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lgye;->a:Lgzi;

    iget-object v1, p0, Lgye;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lgzi;->m(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
