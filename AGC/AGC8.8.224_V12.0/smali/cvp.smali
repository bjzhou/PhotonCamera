.class public final Lcvp;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Lcvm;


# direct methods
.method public constructor <init>(Lcvm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcvp;->a:Lcvm;

    return-void
.end method


# virtual methods
.method public final a()Lken;
    .locals 1

    iget-object v0, p0, Lcvp;->a:Lcvm;

    iget-object v0, v0, Lcvm;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcvp;->a()Lken;

    move-result-object v0

    return-object v0
.end method
