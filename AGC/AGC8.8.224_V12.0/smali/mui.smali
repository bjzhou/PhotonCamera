.class final Lmui;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final a:Lmuh;


# direct methods
.method public constructor <init>(Lmuh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmui;->a:Lmuh;

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lmuj;

    iget-object v1, p0, Lmui;->a:Lmuh;

    invoke-direct {v0, v1}, Lmuj;-><init>(Lmuh;)V

    return-object v0
.end method
