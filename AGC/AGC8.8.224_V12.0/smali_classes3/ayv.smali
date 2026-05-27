.class public final synthetic Layv;
.super Ljava/lang/Object;

# interfaces
.implements Laqs;


# instance fields
.field public final synthetic a:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Layv;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(Laqr;)Laqt;
    .locals 4

    iget-object v0, p0, Layv;->a:Landroid/content/Context;

    iget-object v1, p1, Laqr;->b:Ljava/lang/String;

    iget-object p1, p1, Laqr;->c:Laqq;

    new-instance v2, Lard;

    invoke-direct {v2}, Lard;-><init>()V

    const/4 v3, 0x1

    invoke-static {v0, v1, p1, v3, v3}, Lafk;->p(Landroid/content/Context;Ljava/lang/String;Laqq;ZZ)Laqr;

    move-result-object p1

    invoke-virtual {v2, p1}, Lard;->a(Laqr;)Laqt;

    move-result-object p1

    return-object p1
.end method
