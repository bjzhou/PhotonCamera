.class public final Lesf;
.super Ljava/lang/Object;

# interfaces
.implements Loiw;


# instance fields
.field final synthetic a:Lesh;


# direct methods
.method public constructor <init>(Lesh;)V
    .locals 0

    iput-object p1, p0, Lesf;->a:Lesh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lesk;
    .locals 2

    new-instance v0, Lesk;

    iget-object v1, p0, Lesf;->a:Lesh;

    iget-object v1, v1, Lesh;->a:Lesh;

    invoke-direct {v0, v1}, Lesk;-><init>(Lesh;)V

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lesf;->a()Lesk;

    move-result-object v0

    return-object v0
.end method
