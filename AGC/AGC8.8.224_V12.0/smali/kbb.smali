.class public final Lkbb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field private final a:Lkbc;


# direct methods
.method public constructor <init>(Lkbc;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkbb;->a:Lkbc;

    invoke-interface {p1, p2}, Lkbc;->e(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    iget-object v0, p0, Lkbb;->a:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    return-void
.end method
