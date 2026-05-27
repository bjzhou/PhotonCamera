.class public final Lbqy;
.super Ljava/lang/Object;

# interfaces
.implements Lbqp;


# instance fields
.field private final a:Lbsu;


# direct methods
.method public constructor <init>(Lbsu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbqy;->a:Lbsu;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Lbqq;
    .locals 2

    check-cast p1, Ljava/io/InputStream;

    new-instance v0, Lbqz;

    iget-object v1, p0, Lbqy;->a:Lbsu;

    invoke-direct {v0, p1, v1}, Lbqz;-><init>(Ljava/io/InputStream;Lbsu;)V

    return-object v0
.end method

.method public final b()Ljava/lang/Class;
    .locals 1

    const-class v0, Ljava/io/InputStream;

    return-object v0
.end method
