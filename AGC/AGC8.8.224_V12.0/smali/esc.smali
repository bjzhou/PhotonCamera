.class public final Lesc;
.super Ljava/lang/Object;

# interfaces
.implements Loiw;


# instance fields
.field final synthetic a:Lese;


# direct methods
.method public constructor <init>(Lese;)V
    .locals 0

    iput-object p1, p0, Lesc;->a:Lese;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lva;
    .locals 5

    new-instance v0, Lva;

    iget-object v1, p0, Lesc;->a:Lese;

    iget-object v2, v1, Lese;->a:Lesh;

    iget-object v3, v1, Lese;->b:Lerz;

    iget-object v1, v1, Lese;->c:Lese;

    const/4 v4, 0x0

    invoke-direct {v0, v2, v3, v1, v4}, Lva;-><init>(Lesh;Lerz;Lese;[B)V

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lesc;->a()Lva;

    move-result-object v0

    return-object v0
.end method
