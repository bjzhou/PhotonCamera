.class final Lmau;
.super Lonf;

# interfaces
.implements Lolz;


# instance fields
.field final synthetic a:Logd;


# direct methods
.method public constructor <init>(Logd;)V
    .locals 0

    iput-object p1, p0, Lmau;->a:Logd;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lonf;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lmau;->a:Logd;

    invoke-interface {v0}, Logd;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laxw;

    return-object v0
.end method
