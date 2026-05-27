.class public final Lcim;
.super Ljava/lang/Object;

# interfaces
.implements Lcik;


# instance fields
.field private final a:Lcik;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcik;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcim;->a:Lcik;

    iput-object p2, p0, Lcim;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final bl()Lnou;
    .locals 1

    iget-object v0, p0, Lcim;->a:Lcik;

    invoke-interface {v0}, Lcik;->bl()Lnou;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcim;->b:Ljava/lang/String;

    return-object v0
.end method
