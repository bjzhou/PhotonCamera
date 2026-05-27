.class public final Lcvn;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Lcvm;


# direct methods
.method public constructor <init>(Lcvm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcvn;->a:Lcvm;

    return-void
.end method


# virtual methods
.method public final a()Lkfl;
    .locals 1

    iget-object v0, p0, Lcvn;->a:Lcvm;

    iget-object v0, v0, Lcvm;->b:Ljava/lang/Object;

    check-cast v0, Lkfl;

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcvn;->a()Lkfl;

    move-result-object v0

    return-object v0
.end method
