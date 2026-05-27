.class public final Lcdb;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;


# direct methods
.method public constructor <init>(Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcdb;->a:Loiw;

    return-void
.end method

.method public static b(Loiw;)Lcdb;
    .locals 1

    new-instance v0, Lcdb;

    invoke-direct {v0, p0}, Lcdb;-><init>(Loiw;)V

    return-object v0
.end method


# virtual methods
.method public final a()Lcda;
    .locals 2

    iget-object v0, p0, Lcdb;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldhi;

    new-instance v1, Lcda;

    invoke-direct {v1, v0}, Lcda;-><init>(Ldhi;)V

    return-object v1
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcdb;->a()Lcda;

    move-result-object v0

    return-object v0
.end method
