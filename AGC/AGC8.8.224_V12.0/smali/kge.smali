.class public final Lkge;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Lkgd;


# direct methods
.method public constructor <init>(Lkgd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkge;->a:Lkgd;

    return-void
.end method


# virtual methods
.method public final a()Lkeq;
    .locals 1

    iget-object v0, p0, Lkge;->a:Lkgd;

    iget-object v0, v0, Lkgd;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Lkeq;

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lkge;->a()Lkeq;

    move-result-object v0

    return-object v0
.end method
