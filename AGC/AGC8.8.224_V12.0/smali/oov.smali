.class public final Loov;
.super Loqq;


# instance fields
.field private final c:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Ljava/lang/Thread;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Loqq;-><init>()V

    iput-object p1, p0, Loov;->c:Ljava/lang/Thread;

    return-void
.end method


# virtual methods
.method protected final c()Ljava/lang/Thread;
    .locals 1

    iget-object v0, p0, Loov;->c:Ljava/lang/Thread;

    return-object v0
.end method
