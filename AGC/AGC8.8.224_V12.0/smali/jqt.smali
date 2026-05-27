.class public final Ljqt;
.super Ljava/lang/Object;

# interfaces
.implements Ljpu;


# instance fields
.field private final a:Ljava/util/Set;


# direct methods
.method public constructor <init>(Ljpu;)V
    .locals 0

    invoke-interface {p1}, Ljpu;->a()Ljava/util/Set;

    move-result-object p1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljqt;->a:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Ljqt;->a:Ljava/util/Set;

    return-object v0
.end method
