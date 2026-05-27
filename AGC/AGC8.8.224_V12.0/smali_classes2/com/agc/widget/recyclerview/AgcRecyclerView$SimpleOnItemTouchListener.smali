.class public Lcom/agc/widget/recyclerview/AgcRecyclerView$SimpleOnItemTouchListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/agc/widget/recyclerview/AgcRecyclerView$OnItemTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agc/widget/recyclerview/AgcRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleOnItemTouchListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Lcom/agc/widget/recyclerview/AgcRecyclerView;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onRequestDisallowInterceptTouchEvent(Z)V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Lcom/agc/widget/recyclerview/AgcRecyclerView;Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method
