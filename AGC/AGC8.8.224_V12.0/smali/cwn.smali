.class public final Lcwn;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;


# direct methods
.method public constructor <init>(Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcwn;->a:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Lcwm;
    .locals 2

    iget-object v0, p0, Lcwn;->a:Loiw;

    check-cast v0, Lcwi;

    invoke-virtual {v0}, Lcwi;->a()Lcwj;

    move-result-object v0

    new-instance v1, Lcwm;

    invoke-direct {v1, v0}, Lcwm;-><init>(Lcwj;)V

    return-object v1
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcwn;->a()Lcwm;

    move-result-object v0

    return-object v0
.end method
