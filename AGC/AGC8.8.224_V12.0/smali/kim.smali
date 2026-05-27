.class public final Lkim;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;


# direct methods
.method public constructor <init>(Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkim;->a:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Lkil;
    .locals 2

    iget-object v0, p0, Lkim;->a:Loiw;

    check-cast v0, Lkje;

    invoke-virtual {v0}, Lkje;->a()Lkdy;

    move-result-object v0

    new-instance v1, Lkil;

    invoke-direct {v1, v0}, Lkil;-><init>(Lkdy;)V

    return-object v1
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lkim;->a()Lkil;

    move-result-object v0

    return-object v0
.end method
