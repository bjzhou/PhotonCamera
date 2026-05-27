.class public final Lbym;
.super Ljava/lang/Object;

# interfaces
.implements Lbyl;


# instance fields
.field final a:Lbyk;

.field private final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lbyk;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lbym;->b:Landroid/content/Context;

    iput-object p2, p0, Lbym;->a:Lbyk;

    return-void
.end method


# virtual methods
.method public final g()V
    .locals 0

    return-void
.end method

.method public final h()V
    .locals 2

    iget-object v0, p0, Lbym;->b:Landroid/content/Context;

    invoke-static {v0}, Lbza;->a(Landroid/content/Context;)Lbza;

    move-result-object v0

    iget-object v1, p0, Lbym;->a:Lbyk;

    invoke-virtual {v0, v1}, Lbza;->b(Lbyk;)V

    return-void
.end method

.method public final i()V
    .locals 2

    iget-object v0, p0, Lbym;->b:Landroid/content/Context;

    invoke-static {v0}, Lbza;->a(Landroid/content/Context;)Lbza;

    move-result-object v0

    iget-object v1, p0, Lbym;->a:Lbyk;

    invoke-virtual {v0, v1}, Lbza;->c(Lbyk;)V

    return-void
.end method
