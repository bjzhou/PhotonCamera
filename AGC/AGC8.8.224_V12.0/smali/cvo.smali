.class public final Lcvo;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Lcvm;


# direct methods
.method public constructor <init>(Lcvm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcvo;->a:Lcvm;

    return-void
.end method


# virtual methods
.method public final a()Lcsc;
    .locals 1

    iget-object v0, p0, Lcvo;->a:Lcvm;

    iget-object v0, v0, Lcvm;->c:Ljava/lang/Object;

    check-cast v0, Lcsc;

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcvo;->a()Lcsc;

    move-result-object v0

    return-object v0
.end method
