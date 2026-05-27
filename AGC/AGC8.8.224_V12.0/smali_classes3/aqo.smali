.class public final Laqo;
.super Ljava/lang/Object;

# interfaces
.implements Laqv;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Laqo;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Laqo;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final h(Laqu;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lafi;->e(Laqu;[Ljava/lang/Object;)V

    return-void
.end method
