.class public final Lkov;
.super Ljava/lang/Object;

# interfaces
.implements Lkow;


# instance fields
.field protected final a:Lkow;


# direct methods
.method public constructor <init>(Lkow;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkov;->a:Lkow;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lkov;->a:Lkow;

    invoke-interface {v0}, Lkow;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final j()Lkgd;
    .locals 1

    iget-object v0, p0, Lkov;->a:Lkow;

    invoke-interface {v0}, Lkow;->j()Lkgd;

    move-result-object v0

    return-object v0
.end method
