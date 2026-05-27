.class public final Lcvt;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;

.field private final b:Loiw;


# direct methods
.method public constructor <init>(Loiw;Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcvt;->a:Loiw;

    iput-object p2, p0, Lcvt;->b:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Ldne;
    .locals 3

    iget-object v0, p0, Lcvt;->a:Loiw;

    iget-object v1, p0, Lcvt;->b:Loiw;

    check-cast v1, Lcvs;

    invoke-virtual {v1}, Lcvs;->a()Lcvr;

    move-result-object v1

    new-instance v2, Ldne;

    invoke-direct {v2, v0, v1}, Ldne;-><init>(Loiw;Lcvr;)V

    return-object v2
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcvt;->a()Ldne;

    move-result-object v0

    return-object v0
.end method
