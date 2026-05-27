.class public final Leqx;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Lva;


# direct methods
.method public constructor <init>(Lva;[B[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leqx;->a:Lva;

    return-void
.end method


# virtual methods
.method public final a()Ljuf;
    .locals 1

    iget-object v0, p0, Leqx;->a:Lva;

    iget-object v0, v0, Lva;->a:Ljava/lang/Object;

    check-cast v0, Lcdi;

    invoke-virtual {v0}, Lcdi;->i()Ljuf;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Leqx;->a()Ljuf;

    move-result-object v0

    return-object v0
.end method
